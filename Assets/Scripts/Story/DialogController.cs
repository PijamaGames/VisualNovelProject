using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using UnityEngine.Events;

public class DialogController : MonoBehaviour
{
    [Header("UI REFERENCES")]
    [SerializeField] TextMeshProUGUI nameText;
    [SerializeField] TextMeshProUGUI dialogText;
    private Bilingual nameBilingual;
    private Bilingual dialogBilingual;

    [Header("PARAMETERS")]
    [SerializeField][Range(0.005f, 0.05f)] float textSpeedMultiplier = 0.02f;

    [Header("EVENTS")]
    [SerializeField] UnityEvent onFinishedTyping;

    [HideInInspector] public bool finishedTyping = true;

    private string spanishCharacterName;
    private string englishCharacterName;
    private string spanishDialog;
    private string englishDialog;

    private void Start()
    {
        nameBilingual = nameText.GetComponent<Bilingual>();
        dialogBilingual = dialogText.GetComponent<Bilingual>();
    }

    public void SetName(string _name)
    {
        string[] names = UsefulFuncs.Split(_name, '%');
        spanishCharacterName = names[0].Trim(' ');
        englishCharacterName = names[1].Trim(' ');
        nameBilingual.spanishText = spanishCharacterName;
        nameBilingual.englishText = englishCharacterName;
        nameBilingual.UpdateLanguage();
    }

    public void SetDialog(string _dialog, bool italics = true)
    {
        dialogText.fontStyle = italics ? FontStyles.Italic : FontStyles.Normal;
        Debug.Log("dialog: " + _dialog);
        string[] dialogs = UsefulFuncs.Split(_dialog, '%');
        spanishDialog = dialogs[0].Trim(' ');

        string check = "10";

        if(spanishDialog.Length > 1)
        {
            if(spanishDialog[1] == ' ')
            {
                bool hasError = false;
                for(int i = 0; i < check.Length; i++)
                {
                    hasError = hasError || spanishDialog[0] == check[i];
                }
                if (hasError)
                {
                    Debug.LogWarning("Criba detectada de: " + spanishDialog[0]);
                    string aux = "";
                    for(int i = 2; i<spanishDialog.Length; i++)
                    {
                        aux += spanishDialog[i];
                    }
                    spanishDialog = aux;
                }
            }
        }

        englishDialog = dialogs[1].Trim(' ');
        Debug.Log("es:" + spanishDialog);
        Debug.Log("en:" + englishDialog);

        //dialog = _dialog;
        dialogText.text = "";
        dialogBilingual.spanishText = "";
        dialogBilingual.englishText = "";
        if (!finishedTyping)
        {
            StopCoroutine("TypeCoroutine");
        }
        finishedTyping = false;
        StartCoroutine("TypeCoroutine");
    }

    public void ForceFinish()
    {
        if (!finishedTyping)
        {
            StopCoroutine("TypeCoroutine");
            //dialogText.text = dialog;
            dialogBilingual.spanishText = spanishDialog;
            dialogBilingual.englishText = englishDialog;
            dialogBilingual.UpdateLanguage();
            finishedTyping = true;
            onFinishedTyping.Invoke();
        }
    }

    IEnumerator TypeCoroutine()
    {
        string dialog = GameManager.english ? englishDialog : spanishDialog;

        for(int i = 0; i < dialog.Length; i++)
        {
            dialogText.text += dialog[i];
            yield return new WaitForSeconds((4-GameManager.textSpeed) * textSpeedMultiplier);
        }

        onFinishedTyping.Invoke();
        finishedTyping = true;
    }
}
