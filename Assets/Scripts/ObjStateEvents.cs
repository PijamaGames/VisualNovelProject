﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class ObjStateEvents : MonoBehaviour
{
    [SerializeField] UnityEvent onAwake;
    [SerializeField] UnityEvent onStart;
    [SerializeField] UnityEvent onUpdate;
    [SerializeField] UnityEvent onEnable;
    [SerializeField] UnityEvent onDisable;
    [SerializeField] UnityEvent onDestroy;

    private void Awake()
    {
        onAwake.Invoke();
    }

    private void Start()
    {
        onStart.Invoke();
    }

    private void Update()
    {
        onUpdate.Invoke();
    }

    private void OnEnable()
    {
        onEnable.Invoke();
    }

    private void OnDisable()
    {
        onDisable.Invoke();
    }

    private void OnDestroy()
    {
        onDestroy.Invoke();
    }

    
}
