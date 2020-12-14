using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using Ink.Runtime;

public class AnswerController : MonoBehaviour
{
    [SerializeField] TextMeshProUGUI[] answerButtons;
    private Bilingual[] bilinguals;
    private int answerButtonsCount;

    public void SetAnswers(List<Choice> answers)
    {
        int count = answers.Count;
        string[] texts;
        for (int i = 0; i < answerButtonsCount; i++)
        {
            answerButtons[i].transform.parent.gameObject.SetActive(i < count);
            if(i < count)
            {
                texts = UsefulFuncs.Split(answers[i].text, '%');
                bilinguals[i].spanishText = texts[0];
                bilinguals[i].englishText = texts[1];
                bilinguals[i].UpdateLanguage();
            }
        }
    }

    // Start is called before the first frame update
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
