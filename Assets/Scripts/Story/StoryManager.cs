using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;
using UnityEngine.UI;
using System;

public class StoryManager : MonoBehaviour
{
    private static DateTime initTime = new DateTime(2018, 10, 3);

    [Header("UI RESOURCES")]
    [SerializeField] Sprite[] hours;
    [SerializeField] Sprite[] characterSprites;
    static Dictionary<string, Sprite> characterSpritesDict = new Dictionary<string, Sprite>();
    
    [Header("FILES")]
    [SerializeField] TextAsset inkJSON;

    [Header("UI REFERENCES")]
    [SerializeField] GameObject autoOn;
    [SerializeField] GameObject autoOff;
    [SerializeField] GameObject dialogPanel;
    [SerializeField] GameObject answersPanel;
    [SerializeField] GameObject continueButton;
    [SerializeField] RawImage background;
    [SerializeField] DateController dateController;
    [SerializeField] Bilingual dateText;
    [SerializeField] Image hourImage;
    [SerializeField] Image characterSprite;

    [HideInInspector] public static Story inkStory;
    DialogController dialogController;
    AnswerController answerController;
    private static bool autoMode = false;
    public static string lastState = null;
    public static int day = 1;
    public static string backgroundName;
    public static string character;

    public static QuestionDocument questionDocument;

    void Start()
    {
        if (GameManager.currentSaveFile == null) return;
        characterSpritesDict.Clear();
        foreach (var s in characterSprites) characterSpritesDict.Add(s.name, s);

        inkStory = new Story(inkJSON.text);
        autoOff.SetActive(!autoMode);
        autoOn.SetActive(autoMode);
        //ObserveVars();
        dialogController = dialogPanel.GetComponentInChildren<DialogController>();
        answerController = answersPanel.GetComponentInChildren<AnswerController>();
        GameManager.currentSaveFile.StartRecordingPlayTime();
        string saveFileState = GameManager.currentSaveFile.GetState();
        if (GameManager.shouldLoadLastState)
        {
            LoadLastState();
            UpdateUI();
            dialogController.ForceFinish();
            GameManager.shouldLoadLastState = false;
        }
        else if(saveFileState != null && saveFileState != "")
        {
            LoadState(saveFileState);
            UpdateUI();
            lastState = saveFileState;
        } else
        {
            ContinueStory();
            CheckDateChange(true);
        }
        ObserveVars();

        string music = inkStory.variablesState["music"].ToString();
        PersistentAudioSource.StopAllMusic();
        PlayMusicByName(music);
        string sprite = inkStory.variablesState["sprite"].ToString();
        SetCharacterSpriteByName(sprite);
    }

    private void ObserveVars()
    {
        inkStory.ObserveVariable("sfx", (varName, newValue) =>
        {
            AudioClip clip;
            if(PersistentAudioSource.allClipsDict.TryGetValue(newValue.ToString(), out clip))
            {
                PersistentAudioSource.PlayEffect(clip);
            } else
            {
                Debug.Log("SFX " + newValue.ToString() + " not found");
            }
        });
        inkStory.ObserveVariable("music", (varName, newValue) =>
        {
            PlayMusicByName(newValue.ToString());
        });
        inkStory.ObserveVariable("sprite", (varName, newValue) =>
        {
            SetCharacterSpriteByName(newValue.ToString());
        });
    }

    private void PlayMusicByName(string name)
    {
        AudioClip clip;
        if (PersistentAudioSource.allClipsDict.TryGetValue(name, out clip))
        {
            PersistentAudioSource.StopAllMusic();
            PersistentAudioSource.PlayMusic(clip);
        }
        else
        {
            Debug.Log("MUSIC " + name + " not found");
        }
    }

    private void SetCharacterSpriteByName(string name)
    {
        Sprite sprite;
        bool found = characterSpritesDict.TryGetValue(name, out sprite);
        characterSprite.gameObject.SetActive(found);
        if (found)
        {
            characterSprite.sprite = sprite;
        }
        else Debug.Log("SPRITE " + name + " not found");
    }

    private void OnDestroy()
    {
        //inkStory = null;
    }

    public void SetAutoMode(bool active)
    {
        autoMode = active;
        if (!autoMode)
        {
            StopCoroutine("JumpToNextDialogCoroutine");
        } else if(dialogController.finishedTyping)
        {
            OnFinishedTyping();
        }
    }

    private void SetDialogVisibility(bool visible)
    {
        if(dialogPanel.activeSelf != visible)
            dialogPanel.SetActive(visible);
    }
    private void SetAnswersVisibility(bool visible)
    {
        if(answersPanel.activeSelf != visible)
            answersPanel.SetActive(visible);
    }

    private void SetContinueButtonVisibility(bool visible)
    {
        if (continueButton.activeSelf != visible)
            continueButton.SetActive(visible);
    }

    public void ContinueStory()
    {
        if (!inkStory.canContinue) return;
        //Debug.Log("CONTINUE STORY");

        inkStory.Continue();
        lastState = inkStory.state.ToJson();
        if(!CheckDateChange())
            UpdateUI();
    }

    public void UpdateUI()
    {
        SetDialogVisibility(true);
        SetAnswersVisibility(false);
        SetContinueButtonVisibility(true);
        UpdateBackground();
        UpdateCharacterName();
        UpdateDate();
        UpdateHour();

        bool italics = inkStory.currentTags.Contains("italics");
        dialogController.SetDialog(inkStory.currentText, italics);
    }

    public void OnContinueButton()
    {
        if (dialogController.finishedTyping)
        {
            if (autoMode)
            {
                StopCoroutine("JumpToNextDialogCoroutine");
            }
            ContinueStory();
            
        } else
        {
            dialogController.ForceFinish();
        }
    }

    public void OnFinishedTyping()
    {
        bool hasChoice = CheckChoices();
        SetContinueButtonVisibility(!hasChoice);
        if (!hasChoice && autoMode)
        {
            StartCoroutine("JumpToNextDialogCoroutine");
        }
    }

    IEnumerator JumpToNextDialogCoroutine()
    {
        yield return new WaitForSeconds((4-GameManager.autoModeSpeed));
        ContinueStory();
    }
    private bool CheckChoices()
    {
        int answerCount = inkStory.currentChoices.Count;
        
        SetAnswersVisibility(answerCount > 0);
        if (answerCount > 0)
        {
            int questionId;
            
            try
            {
                questionId = int.Parse(inkStory.variablesState["questionId"].ToString());
            }
            catch
            {
                Debug.Log("QUESTION ID NOT FOUND");
                questionId = 0;
            }

            questionDocument = new QuestionDocument(questionId, 0, 0, 0, 0);
            answerController.CleanAnswersPcts();
            GetQuestionInfoFromDB(questionId);
            answerController.SetAnswers(inkStory.currentChoices);
            return true;
        } else
        {
            return false;
        }
    }

    private async void GetQuestionInfoFromDB(int id)
    {
        await DatabaseManager.TryGetQuestion(id);
        answerController.SetAnswersPcts(questionDocument);
    }

    public void SelectAnswer(int index)
    {
        inkStory.ChooseChoiceIndex(index);
        switch (index)
        {
            case 0: questionDocument.a0++; break;
            case 1: questionDocument.a1++; break;
            case 2: questionDocument.a2++; break;
            case 3: questionDocument.a3++; break;
        }
        DatabaseManager.UpdateQuestion(questionDocument.Clone());
        if (inkStory.canContinue)
        {
            ContinueStory();
        } else
        {
            StopStory();
        }
        GameManager.SaveCurrentStoryState(false);
    }

    public void StopStory()
    {
        SetDialogVisibility(false);
        SetAnswersVisibility(false);
        SetContinueButtonVisibility(false);
    }

    public static string GetState()
    {
        if(inkStory == null && lastState != null)
        {
            return lastState;
        } else if(inkStory != null)
        {
            return inkStory.state.ToJson();
        }
        else
        {
            return null;
        }
    }

    public static void LoadLastState()
    {
        Debug.Log("loading last state");
        if(lastState != null && lastState != "")
        {
            LoadState(lastState);
        }
    }

    public static void LoadState(string json)
    {
        inkStory.state.LoadJson(json);
    }

    private void UpdateBackground()
    {
        string newBackgroundName = inkStory.variablesState["background"].ToString();
        if(newBackgroundName != backgroundName)
        {
            GameManager.SaveCurrentStoryState(false);
        }
        backgroundName = newBackgroundName;
        Texture2D tex = BackgroundManager.GetBackground(backgroundName);
        if (tex != null)
        {
            GameManager.currentSaveFile.background = backgroundName;
            background.texture = tex;
        }
        else
        {
            Debug.Log("No texture for background: " + backgroundName);
        }
    }

    private void UpdateCharacterName()
    {
        string newCharacter = inkStory.variablesState["character"].ToString();
        if(newCharacter != character)
        {
            character = newCharacter;
            dialogController.SetName(character);
        }
    }

    private void UpdateHour()
    {
        int hour = int.Parse(inkStory.variablesState["hour"].ToString());
        if(hour >= 0 && hour <= 2 && hour < hours.Length)
        {
            hourImage.sprite = hours[hour];
        }
    }

    private void UpdateDate()
    {
        string[] dates = GetCurrentDate();
        dateText.spanishText = dates[0];
        dateText.englishText = dates[1];
        dateText.UpdateLanguage();
    }

    public static string[] GetCurrentDate()
    {
        day = int.Parse(inkStory.variablesState["day"].ToString());

        DateTime dateTime = initTime.AddDays(day-1);
        int dayOfTheWeekNum = (int)dateTime.DayOfWeek;
        string dayOfTheWeekSpanish = "";
        string dayOfTheWeekEnglish = "";
        switch (dayOfTheWeekNum)
        {
            case 1:
                dayOfTheWeekSpanish = "Lunes";
                dayOfTheWeekEnglish = "Monday";
                break;
            case 2:
                dayOfTheWeekSpanish = "Martes";
                dayOfTheWeekEnglish = "Tuesday";
                break;
            case 3:
                dayOfTheWeekSpanish = "Miércoles";
                dayOfTheWeekEnglish = "Wednesday";
                break;
            case 4:
                dayOfTheWeekSpanish = "Jueves";
                dayOfTheWeekEnglish = "Thursday";
                break;
            case 5:
                dayOfTheWeekSpanish = "Viernes";
                dayOfTheWeekEnglish = "Friday";
                break;
            case 6:
                dayOfTheWeekSpanish = "Sábado";
                dayOfTheWeekEnglish = "Saturday";
                break;
            case 7:
                dayOfTheWeekSpanish = "Domingo";
                dayOfTheWeekEnglish = "Sunday";
                break;
        }

        string spanishDate = dayOfTheWeekSpanish + ", " + dateTime.Day + "/" + dateTime.Month + ".";
        string englishDate = dayOfTheWeekEnglish + ", " + dateTime.Month + "/" + dateTime.Day + ".";


        return new string[] { spanishDate, englishDate };
    }

    

    private bool CheckDateChange(bool forced = false)
    {
        int currentDay = int.Parse(inkStory.variablesState["day"].ToString());
        if (!forced)
        {
            if (currentDay != day)
            {
                day = currentDay;
                dateController.BeginTransition();
                return true;
            }
        } else if (forced)
        {
            day = currentDay;
            dateController.BeginTransitionAtDate();
            return true;
        }
        return false;
    }

    public static string GetBackground()
    {

        if (inkStory == null) return BackgroundManager.mainMenu;
        else
        {
            object backgroundObj = inkStory.variablesState["background"];
            if (backgroundObj != null)
            {
                return backgroundObj.ToString();
            }
            else return BackgroundManager.mainMenu;
        }
    }
}
