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
    public static SaveFile currentSaveFile;

    public static bool shouldLoadLastState = false;

    private void Awake()
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
    public static void ChangeLanguage()
    {
        english = !english;
        Bilingual.UpdateAll();
    }

    public void ShouldLoadLastState()
    {
        shouldLoadLastState = true;
    }

    public static string GetFilePath(string name)
    {
        string path = resourcesPath + "/" + name + ".txt";
        if (!File.Exists(path))
        {
            File.WriteAllText(path, "");
        }
        return path;
    }

    public static void SaveCurrentStoryState(bool newFile)
    {
        string state = StoryManager.GetState();

        if (newFile)
        {
            string currentDate = UsefulFuncs.GetCurrentDate();
            string currentInstant = UsefulFuncs.GetCurrentInstant();
            currentSaveFile = new SaveFile(currentInstant, currentDate, currentDate, "0", BackgroundManager.mainMenu);
        }

        if(currentSaveFile != null)
        {
            currentSaveFile.SaveState(state);
            CheckSaveFiles();
        }
        else Debug.LogError("Could not save state");
    }

    public static void DeleteCurrentSaveFile()
    {
        currentSaveFile?.Delete();
    }

    //PRIVATE FUNCTIONS
    private static void CheckSaveFiles()
    {
        saveFiles = new List<SaveFile>();
        saveFilesInfoPath = GetFilePath("saveFilesInfo");
        string[] saveFilesInfo = File.ReadAllLines(saveFilesInfoPath);
        for(int i = 0; i < saveFilesInfo.Length/SaveFile.linesPerFile; i++)
        {
            saveFiles.Add(new SaveFile(
                saveFilesInfo[i * SaveFile.linesPerFile],
                saveFilesInfo[i * SaveFile.linesPerFile + 1],
                saveFilesInfo[i * SaveFile.linesPerFile + 2],
                saveFilesInfo[i * SaveFile.linesPerFile + 3],
                saveFilesInfo[i * SaveFile.linesPerFile + 4])
                );
        }
    }

    
    private static void CheckPreferencesFile()
    {

    }
}
