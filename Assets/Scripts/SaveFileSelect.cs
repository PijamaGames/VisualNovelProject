using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;
using UnityEngine.UI;

public class SaveFileSelect : MonoBehaviour
{
    [SerializeField] TextMeshProUGUI lastTimeText;
    [SerializeField] TextMeshProUGUI firstTimeText;
    [SerializeField] TextMeshProUGUI minsPlayedText;
    [SerializeField] RawImage background;

    private SaveFile saveFile = null;

    public void SetSaveFile(SaveFile _saveFile)
    {
        saveFile = _saveFile;
        Texture2D tex = BackgroundManager.GetBackground(saveFile.background);
        Debug.Log("TEX " + saveFile.background);
        Debug.Log(tex);
        if(tex != null)
        {
            background.texture = tex;
        }

        if (GameManager.english)
        {
            lastTimeText.text = "Last time: ";
            firstTimeText.text = "First time: ";
            minsPlayedText.text = "Total time: ";
        } else
        {
            lastTimeText.text = "Última Vez: ";
            firstTimeText.text = "Primera vez: ";
            minsPlayedText.text = "Tiempo jugador: ";
        }

        lastTimeText.text += UsefulFuncs.FormatDate(saveFile.lastTime);
        firstTimeText.text += UsefulFuncs.FormatDate(saveFile.firstTime);
        minsPlayedText.text += UsefulFuncs.FormatPlayTime(saveFile.secondsPlayed);
    }

    public void Load()
    {
        if(saveFile != null)
        {
            saveFile.LoadState();
            SceneLoader.LoadGameScene();
        }
    }

    public void GoToDelete()
    {
        GameManager.currentSaveFile = saveFile;
        SceneLoader.LoadDeleteFileScene();
    }
}
