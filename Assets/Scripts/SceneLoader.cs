using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneLoader : MonoBehaviour
{
    private const string menuScene = "MainMenu";
    private const string configScene = "Config";
    private const string deleteFileScene = "DeleteFile";
    private const string endScene = "End";
    private const string loadFilesScene = "LoadFiles";
    private const string newFileScene = "NewFile";
    private const string pauseScene = "Pause";
    private const string saveScene = "Save";
    private const string gameScene = "Game";

    private static string previousScene = "";

    public static  void LoadMainMenuScene()
    {
        LoadScene(menuScene);
    }
    public static void LoadGameScene()
    {
        LoadScene(gameScene);
    }
    public static void LoadConfigScene()
    {
        LoadScene(configScene);
    }
    public static void LoadDeleteFileScene()
    {
        LoadScene(deleteFileScene);
    }
    public static void LoadEndScene()
    {
        LoadScene(endScene);
    }
    public static void LoadFilesScene()
    {
        LoadScene(loadFilesScene);
    }
    public static void LoadNewFileScene()
    {
        LoadScene(newFileScene);
    }
    public static void LoadPauseScene()
    {
        LoadScene(pauseScene);
    }
    public static void LoadSaveScene()
    {
        LoadScene(saveScene);
    }

    public static void LoadPreviousScene()
    {
        if (!previousScene.Equals(""))
        {
            LoadScene(previousScene);
        } else
        {
            LoadMainMenuScene();
            Debug.Log("There was no previous scene so main menu was loaded");
        }
    }

    private static void LoadScene(string name)
    {
        previousScene = SceneManager.GetActiveScene().name;
        UITransition transitioner = FindObjectOfType<UITransition>();
        if(transitioner != null)
        {
            transitioner.onPlayOutEnd = () =>
            {
                SceneManager.LoadScene(name, LoadSceneMode.Single);
            };
            transitioner.PlayOut();
        } else
        {
            SceneManager.LoadScene(name, LoadSceneMode.Single);
        }
        
        
    }

    

    public void ExitGame()
    {
        Debug.Log("Exit game");
        Application.Quit();
    }
}
