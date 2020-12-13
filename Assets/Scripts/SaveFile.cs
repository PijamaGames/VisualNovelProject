using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;
using System;

public class SaveFile
{
    public const int linesPerFile = 5;

    public string creationInstant;
    public string lastTime;
    public string firstTime;
    public string secondsPlayed;
    public string background;
    
    private string saveFilePath;
    

    DateTime startRecordInstant;

    public SaveFile(string creationInstant, string lastTime, string firstTime, string minsPlayed, string background)
    {
        this.lastTime = lastTime;
        this.firstTime = firstTime;
        this.secondsPlayed = minsPlayed;
        this.creationInstant = creationInstant;
        startRecordInstant = DateTime.Now;
        this.background = background;

        saveFilePath = GameManager.GetFilePath("SaveFiles/" + creationInstant);
    }

    public void StartRecordingPlayTime()
    {
        startRecordInstant = DateTime.Now;
    }

    public string GetState()
    {
        Debug.Log("Getting state of: " + creationInstant);
        return File.ReadAllText(saveFilePath);
    }

    public void LoadState()
    {
        Debug.Log("Loading state of: " + creationInstant);
        GameManager.currentSaveFile = this;
    }

    public void SaveState(string state)
    {
        Debug.Log("Saving state to: " + creationInstant);
        lastTime = UsefulFuncs.GetCurrentDate();
        background = StoryManager.GetBackground();
        UpdatePlayTime();
        UpdateSaveFilesInfo();
        if (state != null && state != "")
        {
            File.WriteAllText(saveFilePath, state);
        }
    }

    private void UpdatePlayTime()
    {
        int secondsPlayedNum = int.Parse(secondsPlayed);
        DateTime now = DateTime.Now;
        int elapsed = Mathf.RoundToInt((float)((now - startRecordInstant).TotalSeconds));
        secondsPlayedNum += elapsed;
        secondsPlayed = "" + secondsPlayedNum;
        Debug.Log("TotalPlayTime: "+UsefulFuncs.FormatPlayTime(secondsPlayed));
        StartRecordingPlayTime();
    }

    private void UpdateSaveFilesInfo()
    {
        List<string> allLines = new List<string>();
        string[] originalAllLines = File.ReadAllLines(GameManager.saveFilesInfoPath);
        string _lastTime;
        string _firstTime;
        string _secondsPlayed;
        string _creationInstant;
        string _background;
        bool written = false;
        
        for (int i = 0; i < originalAllLines.Length/ linesPerFile; i++)
        {
            _creationInstant = originalAllLines[i * linesPerFile];
            _lastTime = originalAllLines[i * linesPerFile + 1];
            _firstTime = originalAllLines[i * linesPerFile + 2];
            _secondsPlayed = originalAllLines[i * linesPerFile + 3];
            _background = originalAllLines[i * linesPerFile + 4];

            allLines.Add(_creationInstant);
            if (_creationInstant == this.creationInstant)
            {
                written = true;
                allLines.Add(lastTime);
                allLines.Add(_firstTime);
                allLines.Add(secondsPlayed);
                allLines.Add(background);
            }
            else
            {
                allLines.Add(_lastTime);
                allLines.Add(_firstTime);
                allLines.Add(_secondsPlayed);
                allLines.Add(_background);
            }
            
        }
        if (!written)
        {
            allLines.Add(creationInstant);
            allLines.Add(lastTime);
            allLines.Add(firstTime);
            allLines.Add(secondsPlayed);
            allLines.Add(background);
        }
        File.WriteAllLines(GameManager.saveFilesInfoPath, allLines);
    }

    public void Delete()
    {
        Debug.Log("Deleting save file: " + creationInstant);

        if(File.Exists(saveFilePath))
            File.Delete(saveFilePath);

        GameManager.saveFiles.Remove(this);

        List<string> allLines = new List<string>();
        string[] originalAllLines = File.ReadAllLines(GameManager.saveFilesInfoPath);
        string _creationInstant;

        for (int i = 0; i < originalAllLines.Length / linesPerFile; i++)
        {
            _creationInstant = originalAllLines[i * linesPerFile];

            if (_creationInstant != this.creationInstant)
            {
                allLines.Add(creationInstant);
                allLines.Add(originalAllLines[i * linesPerFile + 1]);
                allLines.Add(originalAllLines[i * linesPerFile + 2]);
                allLines.Add(originalAllLines[i * linesPerFile + 3]);
                allLines.Add(originalAllLines[i * linesPerFile + 4]);

            }
        }
        File.WriteAllLines(GameManager.saveFilesInfoPath, allLines);
    }
}
