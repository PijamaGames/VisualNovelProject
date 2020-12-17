using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;
using UnityEngine.UI;
using System;

public class StoryManager : MonoBehaviour
{
    private static DateTime initTime = new DateTime(2018, 10, 3);
    
    [Header("FILES")]
    [SerializeField] TextAsset inkJSON;
    
    [Header("UI REFERENCES")]
    [SerializeField] GameObject dialogPanel;
    [SerializeField] GameObject answersPanel;
    [SerializeField] GameObject continueButton;
    [SerializeField] RawImage background;
    [SerializeField] DateController dateController;
    [SerializeField] Bilingual dateText;

    [HideInInspector] public static Story inkStory;
    DialogController dialogController;
    AnswerController answerController;
    bool autoMode = false;
    public static string lastState = null;
    public static int day = 1;
    public static string backgroundName;
    public static string character;

    void Start()
    {
        if (GameManager.currentSaveFile == null) return;
        inkStory = new Story(inkJSON.text);
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
    }

    /*private void ObserveVars()
    {
        //inkStory.ObserveVariable("background", (varName, newValue) => UpdateBackground(newValue.ToString()));
        //inkStory.ObserveVariable("character", (varName, newValue) => UpdateName(newValue.ToString()));
        //inkStory.ObserveVariable("day", (varName, newValue) => dateController.BeginTransition());
    }*/

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

        dialogController.SetDialog(inkStory.currentText);
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
            answerController.SetAnswers(inkStory.currentChoices);
            return true;
        } else
        {
            return false;
        }
    }

    public void SelectAnswer(int index)
    {
        inkStory.ChooseChoiceIndex(index);
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

        /*if(newBackgroundName != backgroundName)
        {*/
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
        //}
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
        Debug.Log(dayOfTheWeekNum);
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
