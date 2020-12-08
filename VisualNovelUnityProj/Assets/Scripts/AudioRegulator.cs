﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class AudioRegulator : MonoBehaviour
{
    public static HashSet<AudioRegulator> regulators = new HashSet<AudioRegulator>();
    AudioSource audioSource;
    float originalVolume;
    [SerializeField] bool isMusic = true;

    private void OnDestroy()
    {
        regulators.Remove(this);
    }

    // Start is called before the first frame update
    void Start()
    {
        regulators.Add(this);
        audioSource = GetComponent<AudioSource>();
        originalVolume = audioSource.volume;
        UpdateVolume();
    }

    public void UpdateVolume()
    {
        audioSource.volume = originalVolume * (isMusic ? GameManager.musicVolume : GameManager.effectsVolume);
    }

    public static void UpdateAllVolumes()
    {
        foreach(var r in regulators)
        {
            if(r != null)
                r.UpdateVolume();
        }
    }
}