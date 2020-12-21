using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class Bilingual : MonoBehaviour
{
    TextMeshProUGUI text;
    [HideInInspector] public string spanishText;
    [SerializeField][TextArea] public string englishText = "";

    private void Start()
    {
        text = GetComponentInChildren<TextMeshProUGUI>();
        spanishText = text.text;
        UpdateLanguage();
    }

    public void UpdateLanguage()
    {
        text.text = GameManager.english ? englishText : spanishText;
    }

    public static void UpdateAll()
    {
        var bilinguals = FindObjectsOfType<Bilingual>();
        foreach(var b in bilinguals)
        {
            b.UpdateLanguage();
        }
    }
}
