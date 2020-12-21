using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class QuestionDocument
{
    public int _id;
    public int a0;
    public int a1;
    public int a2;
    public int a3;

    public QuestionDocument(int id, int a0, int a1, int a2, int a3)
    {
        this._id = id;
        this.a0 = a0;
        this.a1 = a1;
        this.a2 = a2;
        this.a3 = a3;
    }

    public QuestionDocument Clone()
    {
        return new QuestionDocument(_id, a0, a1, a2, a3);
    }
}
