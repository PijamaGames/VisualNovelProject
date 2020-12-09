using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using Ink.Runtime;

public class AnswerController : MonoBehaviour
{
    [SerializeField] TextMeshProUGUI[] answerButtons;
    private int answerButtonsCount;

    public void SetAnswers(List<Choice> answers)
    {
        int count = answers.Count;
        for(int i = 0; i < answerButtonsCount; i++)
        {
            answerButtons[i].transform.parent.gameObject.SetActive(i < count);
            if(i < count)
            {
                answerButtons[i].text = answers[i].text;
            }
        }
    }

    // Start is called before the first frame update
    void Start()
    {
        answerButtonsCount = answerButtons.Length;
        //answerButtons = new GameObject[] { answerButton0, answerButton1, answerButton2, answerButton3};

    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
