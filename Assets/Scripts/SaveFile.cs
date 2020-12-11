using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO;

public class SaveFile
{
    public string lastTime;
    public string firstTime;
    public string minsPlayed;

    public SaveFile(string lastTime, string firstTime, string minsPlayed)
    {
        this.lastTime = lastTime;
        this.firstTime = firstTime;
        this.minsPlayed = minsPlayed;
    }

    public void SaveState(string saveFilesInfoPath, string saveFilePath, string state)
    {
        UpdateSaveFilesInfo(saveFilesInfoPath);
        if (state != null)
        {
            File.WriteAllText(saveFilePath, state);
        }
    }

    private void UpdateSaveFilesInfo(string path)
    {
        List<string> allLines = new List<string>();
        string[] originalAllLines = File.ReadAllLines(path);
        string _lastTime;
        string _firstTime;
        string _minsPlayed;
        bool written = false;
        for (int i = 0; i < originalAllLines.Length; i++)
        {
            _lastTime = originalAllLines[i * 3];
            _firstTime = originalAllLines[i * 3 + 1];
            _minsPlayed = originalAllLines[i * 3 + 2];
            if (_firstTime == this.firstTime)
            {
                written = true;
                allLines.Add(GameManager.GetCurrentDate());
            }
            else
            {
                allLines.Add(_lastTime);
            }
            allLines.Add(_firstTime);
            allLines.Add(_minsPlayed);
        }
        if (!written)
        {
            allLines.Add(this.lastTime);
            allLines.Add(this.firstTime);
            allLines.Add("0");
        }
        File.WriteAllLines(path, allLines);
    }
}
