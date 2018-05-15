using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spin : MonoBehaviour {

    public Vector3 EulerAngle = Vector3.zero;

	void Update () {
        var rotation = transform.rotation;
        rotation.eulerAngles += EulerAngle * Time.deltaTime;
        transform.rotation = rotation;
    }
}
