using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SaveFileDisplay : MonoBehaviour
{
    [SerializeField] GameObject saveFilePrefab;

    // Start is called before the first frame update
    void Start()
    {
        foreach(SaveFile saveFile in GameManager.saveFiles)
        {
            GameObject saveFileItem = Instantiate(saveFilePrefab);
            saveFileItem.transform.SetParent(transform, false);
            saveFileItem.GetComponent<SaveFileSelect>().SetSaveFile(saveFile);
        }
    }
}
