using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class ConfigPanel : MonoBehaviour
{
    [SerializeField] Slider musicVolumeSlider;
    [SerializeField] Slider effectsVolumeSlider;
    [SerializeField] Slider textSpeedSlider;
    [SerializeField] Slider autoModeSpeedSlider;

    private void Start()
    {
        musicVolumeSlider.value = GameManager.musicVolume;
        effectsVolumeSlider.value = GameManager.effectsVolume;
        textSpeedSlider.value = GameManager.textSpeed;
        autoModeSpeedSlider.value = GameManager.autoModeSpeed;
    }


    public void UpdateMusicVolume(System.Single value)
    {
        GameManager.musicVolume = value;
        AudioRegulator.UpdateAllVolumes();
    }

    public void UpdateEffectsVolume(System.Single value)
    {
        Debug.Log(value);
        GameManager.effectsVolume = value;
        AudioRegulator.UpdateAllVolumes();
    }

    public void UpdateTextSpeed(System.Single value)
    {
        GameManager.textSpeed = Mathf.RoundToInt(value);
    }

    public void UpdateAutoModeSpeed(System.Single value)
    {
        GameManager.autoModeSpeed = Mathf.RoundToInt(value);
    }
}
