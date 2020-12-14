using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class BackgroundManager : MonoBehaviour
{
    [SerializeField] Texture2D[] backgrounds;

    private static BackgroundManager instance;
    private static Dictionary<string, Texture2D> nameToImageDict;

    public const string mainMenu = "mainmenu";
    public const string locker = "locker";
    public const string bus = "bus";
    public const string prisonExterior = "prisonexterior";
    public const string yard = "yard";
    

    private void Start()
    {
        if(instance == null)
        {
            instance = this;
            nameToImageDict = new Dictionary<string, Texture2D>();
            foreach(var tex in backgrounds)
            {
                nameToImageDict.Add(tex.name, tex);
            }
        }
    }

    public static Texture2D GetBackground(string name)
    {
        if(instance != null)
        {
            Texture2D tex;
            bool succeed = nameToImageDict.TryGetValue(name, out tex);
            return succeed ? tex : null;
        }
        return null;
    }
}
