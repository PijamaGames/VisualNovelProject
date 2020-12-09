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

    public void LoadMainMenuScene()
    {
        LoadScene(menuScene);
    }
    public void LoadGameScene()
    {
        LoadScene(gameScene);
    }
    public void LoadConfigScene()
    {
        LoadScene(configScene);
    }
    public void LoadDeleteFileScene()
    {
        LoadScene(deleteFileScene);
    }
    public void LoadEndScene()
    {
        LoadScene(endScene);
    }
    public void LoadFilesScene()
    {
        LoadScene(loadFilesScene);
    }
    public void LoadNewFileScene()
    {
        LoadScene(newFileScene);
    }
    public void LoadPauseScene()
    {
        LoadScene(pauseScene);
    }
    public void LoadSaveScene()
    {
        LoadScene(saveScene);
    }

    public void LoadPreviousScene()
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

    private void LoadScene(string name)
    {
        previousScene = SceneManager.GetActiveScene().name;
        SceneManager.LoadScene(name, LoadSceneMode.Single);
    }

    

    public void ExitGame()
    {
        Debug.Log("Exit game");
        Application.Quit();
    }
}
