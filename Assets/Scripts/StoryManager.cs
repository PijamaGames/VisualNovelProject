using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Ink.Runtime;

public class StoryManager : MonoBehaviour
{
    
    [Header("FILES")]
    [SerializeField] TextAsset inkJSON;
    
    [Header("UI REFERENCES")]
    [SerializeField] GameObject dialogPanel;
    [SerializeField] GameObject answersPanel;
    [SerializeField] GameObject continueButton;
    

    [HideInInspector] public static Story inkStory;
    DialogController dialogController;
    AnswerController answerController;
    bool autoMode = false;

    void Start()
    {
        inkStory = new Story(inkJSON.text);
        dialogController = dialogPanel.GetComponentInChildren<DialogController>();
        answerController = answersPanel.GetComponentInChildren<AnswerController>();
        ContinueStory();
    }
    public void SetAutoMode(bool active)
    {
        autoMode = active;
        if (!autoMode)
        {
            StopCoroutine("JumpToNextDialogCoroutine");
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
        Debug.Log("CONTINUE STORY");

        inkStory.Continue();
        SetDialogVisibility(true);
        SetAnswersVisibility(false);
        SetContinueButtonVisibility(true);
        
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
    }

    public void StopStory()
    {
        SetDialogVisibility(false);
        SetAnswersVisibility(false);
        SetContinueButtonVisibility(false);
    }

    public static string GetState()
    {
        return inkStory != null ? inkStory.state.ToJson() : null;
    }

    public static void LoadState(string json)
    {
        inkStory.state.LoadJson(json);
    }
}
