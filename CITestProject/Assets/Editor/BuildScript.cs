using UnityEditor;
using UnityEngine;

public class BuildScript : MonoBehaviour {

    [MenuItem("Build/Build OS X")]
    public static void BuildOSX()
    {
        BuildPlayerOptions buildPlayerOptions = new BuildPlayerOptions();
        buildPlayerOptions.scenes = new[] { "Assets/Scenes/TestScene1.unity" };
        buildPlayerOptions.locationPathName = "Builds/OSXBuild";
        buildPlayerOptions.target = BuildTarget.StandaloneOSX;
        buildPlayerOptions.options = BuildOptions.None;
        BuildPipeline.BuildPlayer(buildPlayerOptions);
    }

    [MenuItem("Build/Build Win")]
    public static void BuildWin()
    {
        BuildPlayerOptions buildPlayerOptions = new BuildPlayerOptions();
        buildPlayerOptions.scenes = new[] { "Assets/Scenes/TestScene1.unity" };
        buildPlayerOptions.locationPathName = "Builds/WinBuild";
        buildPlayerOptions.target = BuildTarget.StandaloneWindows;
        buildPlayerOptions.options = BuildOptions.None;
        BuildPipeline.BuildPlayer(buildPlayerOptions);
    }
}
