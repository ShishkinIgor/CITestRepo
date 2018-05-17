using UnityEngine;
using UnityEditor;
using UnityEngine.TestTools;
using NUnit.Framework;
using System.Collections;

public class SimpleEditModeTest {

	[Test]
	public void SuccessfulPass() {

        Assert.Pass("Test pass.");
	}

    [Test]
    public void FailedPass()
    {
        Assert.Fail("Test failed.");
    }
}
