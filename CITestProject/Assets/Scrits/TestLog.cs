using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestLog : MonoBehaviour {

    float timeToNextMsg = 0;
    float MsgDelay = 1f;

	// Update is called once per frame
	void Update () {
        timeToNextMsg -= Time.deltaTime;
        if (timeToNextMsg <= 0)
        {
            timeToNextMsg += MsgDelay;
            Debug.Log("Log Message");
            Debug.LogWarning("Warning Message");
            Debug.LogError("Error Message");
        }
	}
}
