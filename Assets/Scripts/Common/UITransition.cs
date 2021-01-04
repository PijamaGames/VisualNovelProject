using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class UITransition : MonoBehaviour
{
    [SerializeField] bool playClipInOnStart = true;
    [SerializeField] AnimationClip clipIn;
    [SerializeField] AnimationClip clipOut;

    public delegate void UITransitionEventHandler();
    public UITransitionEventHandler onPlayInStart;
    public UITransitionEventHandler onPlayInEnd;
    public UITransitionEventHandler onPlayOutStart;
    public UITransitionEventHandler onPlayOutEnd;

    private Animator anim;

    // Start is called before the first frame update
    void Start()
    {
        anim = GetComponentInChildren<Animator>();
        if (playClipInOnStart) PlayIn();
    }

    public void PlayIn()
    {
        anim.Play(clipIn.name);
        onPlayInStart?.Invoke();
        StartCoroutine(OnPlayInEnd());
    }

    public void PlayOut()
    {
        anim.Play(clipOut.name);
        onPlayOutStart?.Invoke();
        StartCoroutine(OnPlayOutEnd());
    }

    IEnumerator OnPlayInEnd()
    {
        yield return new WaitForSeconds(clipIn.length);
        
        onPlayInEnd?.Invoke();
    }

    IEnumerator OnPlayOutEnd()
    {
        yield return new WaitForSeconds(clipOut.length);
        Debug.Log("changing scene");
        if (onPlayOutEnd != null) onPlayOutEnd();
        Debug.Log("sceneLoaded scene");
    }
}
