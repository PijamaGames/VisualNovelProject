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
    

    Story inkStory;
    DialogController dialogController;
    AnswerController answerController;

    void Start()
    {
        inkStory = new Story(inkJSON.text);
        dialogController = dialogPanel.GetComponentInChildren<DialogController>();
        answerController = answersPanel.GetComponentInChildren<AnswerController>();
        ContinueStory();
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
        SetContinueButtonVisibility(false);
        
        dialogController.SetDialog(inkStory.currentText);
    }

    public void CheckChoices()
    {
        int answerCount = inkStory.currentChoices.Count;
        SetContinueButtonVisibility(answerCount <= 0);
        SetAnswersVisibility(answerCount > 0);
        if (answerCount > 0)
            answerController.SetAnswers(inkStory.currentChoices);
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

    // Update is called once per frame
    void Update()
    {
        
    }
}
