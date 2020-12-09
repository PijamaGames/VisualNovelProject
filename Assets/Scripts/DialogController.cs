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

    [Header("PARAMETERS")]
    [SerializeField][Range(0.005f, 0.05f)] float textSpeedMultiplier = 0.02f;

    [Header("EVENTS")]
    [SerializeField] UnityEvent onFinishedTyping;

    [HideInInspector] public bool finishedTyping = true;

    private string characterName;
    private string dialog;
    

    public void SetName(string _name)
    {
        characterName = _name;
        nameText.text = characterName;
    }

    public void SetDialog(string _dialog)
    {
        dialog = _dialog;
        dialogText.text = "";
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
            dialogText.text = dialog;
            finishedTyping = true;
            onFinishedTyping.Invoke();
        }
    }

    IEnumerator TypeCoroutine()
    {
        for(int i = 0; i < dialog.Length; i++)
        {
            dialogText.text += dialog[i];
            yield return new WaitForSeconds(GameManager.textSpeed * textSpeedMultiplier);
        }
        onFinishedTyping.Invoke();
        finishedTyping = true;
    }
}
