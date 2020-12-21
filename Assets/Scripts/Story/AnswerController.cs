using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using Ink.Runtime;

public class AnswerController : MonoBehaviour
{
    [SerializeField] TextMeshProUGUI[] answerButtons;
    [SerializeField] TextMeshProUGUI[] answerPcts;
    private Bilingual[] bilinguals;
    private int answerButtonsCount;
    private int choiceCount = 0;

    public void SetAnswers(List<Choice> answers)
    {
        choiceCount = answers.Count;
        string[] texts;
        for (int i = 0; i < answerButtonsCount; i++)
        {
            answerButtons[i].transform.parent.gameObject.SetActive(i < choiceCount);
            if(i < choiceCount)
            {
                texts = UsefulFuncs.Split(answers[i].text, '%');
                bilinguals[i].spanishText = texts[0];
                bilinguals[i].englishText = texts[1];
                bilinguals[i].UpdateLanguage();
            }
        }
    }

    public void CleanAnswersPcts()
    {
        foreach(var t in answerPcts)
        {
            t.text = "";
        }
    }

    public void SetAnswersPcts(QuestionDocument question)
    {
        if (choiceCount < 2) return;
        float total = question.a0 + question.a1 + question.a2 + question.a3;
        Debug.Log("TOTAL :" + total);
        int[] pcts;
        if(total < 0.5f)
        {
            pcts = new int[] { 0, 0, 0, 0 };
        } else
        {
            pcts = new int[]
            {
                (int)((question.a0 / total)*100),
                (int)((question.a1 / total)*100),
                (int)((question.a2 / total)*100),
                (int)((question.a3 / total)*100),
            };
        }

        for(int i = 0; i < answerPcts.Length; i++)
        {
            answerPcts[i].text = ""+pcts[i] + "%";
        }
    }

    void Start()
    {
        answerButtonsCount = answerButtons.Length;
        List<Bilingual> aux = new List<Bilingual>();
        foreach (var t in answerButtons)
        {
            aux.Add(t.transform.parent.GetComponent<Bilingual>());
        }
        bilinguals = aux.ToArray();
        //answerButtons = new GameObject[] { answerButton0, answerButton1, answerButton2, answerButton3};

    }
}
