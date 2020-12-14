using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using UnityEngine.Events;

public class DateController : MonoBehaviour
{
    [SerializeField] UnityEvent onBeginTransition;
    [SerializeField] UnityEvent onHalfTransition;
    [SerializeField] UnityEvent onEndTransition;

    [SerializeField] [Range(0f, 1f)] float smoothEdge0 = 0f;
    [SerializeField] [Range(0f, 1f)] float smoothEdge1 = 1f;
    [SerializeField] float fadeIn;
    [SerializeField] float dateShowTime;
    [SerializeField] float fadeOut;

    private Image blackOverlay;
    private TextMeshProUGUI dateText;
    private Bilingual dateBilingual;

    private bool inTransition = false;
    private float timer = 0f;
    private bool halfTransition = false;

    // Start is called before the first frame update
    void Start()
    {
        blackOverlay = GetComponent<Image>();
        dateText = GetComponentInChildren<TextMeshProUGUI>();
        dateBilingual = GetComponent<Bilingual>();
        SetAlpha(0f);
    }

    private void SetAlpha(float alpha)
    {
        blackOverlay.color = new Color(blackOverlay.color.r, blackOverlay.color.g, blackOverlay.color.b, alpha);
        dateText.color = new Color(dateText.color.r, dateText.color.g, dateText.color.b, alpha);
    }

    private void PutDate()
    {
        string[] dates = StoryManager.GetCurrentDate();
        dateBilingual.spanishText = dates[0];
        dateBilingual.englishText = dates[1];
        dateBilingual.UpdateLanguage();
    }

    public void BeginTransition()
    {
        Debug.Log("Start date transition");
        onBeginTransition.Invoke();
        timer = 0f;
        inTransition = true;
        halfTransition = true;
        SetAlpha(0f);
        PutDate();
    }

    public void BeginTransitionAtDate()
    {
        Debug.Log("Start date transition at date");
        onBeginTransition.Invoke();
        timer = fadeIn;
        halfTransition = true;
        onHalfTransition.Invoke();
        SetAlpha(1f);
        inTransition = true;
        PutDate();
    }

    

    private void EndTransition()
    {
        Debug.Log("End date transition");
        onEndTransition.Invoke();
        inTransition = false;
        SetAlpha(0f);
    }


    // Update is called once per frame
    void Update()
    {
        if (inTransition)
        {
            timer += Time.deltaTime;
            //Debug.Log(stepTime);
            float alpha = 1f;
            if(timer < fadeIn)
            {
                alpha = Mathf.SmoothStep(smoothEdge0, smoothEdge1, timer / fadeIn);
            } else if (!halfTransition)
            {
                Debug.Log("Half transition");
                halfTransition = true;
                onHalfTransition.Invoke();
            }

            if (timer < fadeOut + fadeIn + dateShowTime && timer > fadeIn)
            {
                alpha = 1f - Mathf.SmoothStep(smoothEdge0, smoothEdge1, (timer - fadeIn-dateShowTime) / fadeOut);
            }
            SetAlpha(alpha);
            if (timer > fadeIn + dateShowTime + fadeOut) EndTransition();
        }
    }
}
