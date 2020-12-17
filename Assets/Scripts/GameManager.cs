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
    public static string saveFilesPath;
    public static List<SaveFile> saveFiles;
    public static SaveFile currentSaveFile;

    public static bool shouldLoadLastState = false;

    private void Awake()
    {
        if (firstInstance)
        {
            firstInstance = false;
            resourcesPath = Application.persistentDataPath;
            saveFilesPath = resourcesPath + "/SaveFiles";
            if (!Directory.Exists(saveFilesPath))
            {
                Directory.CreateDirectory(saveFilesPath);
            }
            Debug.Log("Resources path: "+resourcesPath);
            CheckSaveFiles();
            CheckPreferencesFile();
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

        saveFiles.Sort((s1, s2) =>
        {
            return UsefulFuncs.InstantToDate(s1.lastTime).CompareTo(UsefulFuncs.InstantToDate(s2.lastTime));
        });
    }

    public static void SavePreferences()
    {
        string preferencesPath = GetFilePath("Preferences");
        List<string> allLines = new List<string>(5);

        allLines.Add(musicVolume.ToString());
        allLines.Add(effectsVolume.ToString());
        allLines.Add(textSpeed.ToString());
        allLines.Add(autoModeSpeed.ToString());
        allLines.Add(english.ToString());
        File.WriteAllLines(preferencesPath, allLines);
    }
    
    private static void CheckPreferencesFile()
    {
        string preferencesPath = GetFilePath("Preferences");
        string[] allLines = File.ReadAllLines(preferencesPath);
        if(allLines.Length > 0)
        {
            musicVolume = float.Parse(allLines[0]);
            effectsVolume = float.Parse(allLines[1]);
            textSpeed = int.Parse(allLines[2]);
            autoModeSpeed = int.Parse(allLines[3]);
            english = bool.Parse(allLines[4]);
        }
    }
}
