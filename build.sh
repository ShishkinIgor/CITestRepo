#! /bin/sh

# Example build script for Unity3D project. See the entire example: https://github.com/JonathanPorta/ci-build

# Change this the name of your project. This will be the name of the final executables as well.
project="/CITestProject"

echo "Current path:"
echo $0

echo "Attempting to build $project for OSX"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -nographics \
  -silent-crashes \
  -logFile $0/unity.log \
  -projectPath $0$project \
  -buildOSXUniversalPlayer "$0/Build/osx$project.exe" \
  -quit

echo 'Logs from build'
cat $0/unity.log