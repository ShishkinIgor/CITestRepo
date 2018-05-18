#! /bin/sh

# Example build script for Unity3D project. See the entire example: https://github.com/JonathanPorta/ci-build

# Change this the name of your project. This will be the name of the final executables as well.
project="/CITestProject"
buildSettings="/ProjectSettings/EditorBuildSettings.asset"
projectPath=$(dirname "$0")

echo "Build path: $projectPath$project"
#cat $(pwd)$project$buildSettings

echo "Attempting to build $project for OSX"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -nographics \
  -silent-crashes \
  -logFile $projectPath/unity.log \
  -projectPath $projectPath$project \
  -buildOSXUniversalPlayer "$projectPath/Build/windows$project.exe" \
  -quit

echo $?
echo 'Logs from build'
#cat $(pwd)/unity.log