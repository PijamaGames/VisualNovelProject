using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PersistentAudioSource : MonoBehaviour
{

    private const int poolSize = 10;
    private static AudioSource[] audioSources = new AudioSource[poolSize];
    private static Stack<AudioSource> avaibleAudioSources = new Stack<AudioSource>();
    private static HashSet<AudioSource> inUseAudioSources = new HashSet<AudioSource>();
    private static GameObject pool;

    private void Start()
    {
        if(pool == null)
        {
            pool = new GameObject("AudioPool");
            pool.transform.position = Camera.main.transform.position;
            GameObject obj;
            for (int i = 0; i < poolSize; i++)
            {
                obj = new GameObject("AudioSource" + i);
                obj.transform.parent = pool.transform;
                audioSources[i] = obj.AddComponent(typeof(AudioSource)) as AudioSource;
                obj.AddComponent(typeof(AudioRegulator));
                audioSources[i].enabled = false;
                avaibleAudioSources.Push(audioSources[i]);
            }
            DontDestroyOnLoad(pool);
        } else
        {
            Debug.Log("AudioPool already present");
        }
    }

    private void Update()
    {
        List<AudioSource> audiosToStop = new List<AudioSource>();
        
        foreach(AudioSource source in inUseAudioSources)
        {
            if (!source.isPlaying)
            {
                audiosToStop.Add(source);
            }
        }
        for(int i = 0; i < audiosToStop.Count; i++)
        {
            StopSource(audiosToStop[i]);
        }
        audiosToStop.Clear();
    }

    private static void StopSource(AudioSource source)
    {
        source.enabled = false;
        inUseAudioSources.Remove(source);
        avaibleAudioSources.Push(source);
    }

    public static void StopClip(AudioClip clip)
    {
        foreach(AudioSource source in inUseAudioSources)
        {
            if(source.clip == clip)
            {
                StopSource(source);
            }
        }
    }

    public static void PlayMusic(AudioClip clip)
    {
        bool alreadyPlaying = false;
        foreach(AudioSource source in inUseAudioSources)
        {
            if(source.clip == clip)
            {
                alreadyPlaying = true;
            }
        }

        if (!alreadyPlaying)
        {
            TryPlayClip(clip, true, true);
        }
        
    }

    public static void PlayEffect(AudioClip clip)
    {
        TryPlayClip(clip, false, false);
    }

    private static void TryPlayClip(AudioClip clip, bool isMusic, bool loop = false)
    {
        if (avaibleAudioSources.Count > 0)
        {
            var source = avaibleAudioSources.Pop();
            inUseAudioSources.Add(source);
            source.enabled = true;
            source.clip = clip;
            source.loop = loop;
            source.Play();
            var regulator = source.GetComponent<AudioRegulator>();
            regulator.isMusic = isMusic;
        }
    }
}
