using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;

public class GameManager : MonoBehaviour
{
    public static float musicVolume = 0.5f;
    public static float effectsVolume = 0.5f;
    public static int textSpeed = 2;
    public static int autoModeSpeed = 2;
    public static bool english = false;
    private static bool firstInstance = true;

    public static string resourcesPath;
    public static string saveFilesInfoPath;
    public static List<SaveFile> saveFiles;
    private static SaveFile currentSaveFile;

    private void Start()
    {
        if (firstInstance)
        {
            firstInstance = false;
            resourcesPath = Application.dataPath + "/Resources";
            CheckSaveFiles();
            CheckPreferencesFile();
            //SaveCurrentStoryState(true);
        }
    }

    //PUBLIC FUNCTIONS
    public void ChangeLanguage()
    {
        english = !english;
        Bilingual.UpdateAll();
    }

    public static string GetCurrentDate()
    {
        System.DateTime now = System.DateTime.Now;
        return "" + now.Day + "_" + now.Month + "_" + now.Year;
    }

    public void SaveCurrentStoryState(bool newFile)
    {
        string state = StoryManager.GetState();

        if (newFile)
        {
            currentSaveFile = new SaveFile(GetCurrentDate(), GetCurrentDate(), "0");
        }

        if(currentSaveFile != null)
        {
            string saveFilePath = GetFilePath("SaveFiles/" + currentSaveFile.firstTime);
            currentSaveFile.SaveState(saveFilesInfoPath, saveFilePath, state);
        }
        else Debug.LogError("Could not save state");
    }

    //PRIVATE FUNCTIONS
    private void CheckSaveFiles()
    {
        saveFiles = new List<SaveFile>();
        saveFilesInfoPath = GetFilePath("saveFilesInfo");
        string[] saveFilesInfo = File.ReadAllLines(saveFilesInfoPath);
        for(int i = 0; i < saveFilesInfo.Length/3; i++)
        {
            saveFiles.Add(new SaveFile(
                saveFilesInfo[i * 3],
                saveFilesInfo[i * 3 + 1],
                saveFilesInfo[i * 3 + 2])
                );
        }
    }

    private void CheckPreferencesFile()
    {

    }

    private string GetFilePath(string name)
    {
        string path = resourcesPath + "/" + name + ".txt";
        if (!File.Exists(path))
        {
            File.WriteAllText(path, "");
        }
        return path;
    }
}
