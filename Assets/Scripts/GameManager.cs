using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class GameManager : MonoBehaviour
{
    public static float musicVolume = 0.5f;
    public static float effectsVolume = 0.5f;
    public static int textSpeed = 2;
    public static int autoModeSpeed = 2;
    public static bool english = false;
    
    public void ChangeLanguage()
    {
        english = !english;
        Bilingual.UpdateAll();
    }

}
