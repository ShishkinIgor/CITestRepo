#! /bin/sh

# Example build script for Unity3D project. See the entire example: https://github.com/JonathanPorta/ci-build

# Change this the name of your project. This will be the name of the final executables as well.
project="/CITestProject"

echo "Current path:"
echo $(pwd)

echo "Attempting to build $project for OSX"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -nographics \
  -silent-crashes \
  -logFile $(pwd)/unity.log \
  -projectPath $(pwd)$project \
  -buildOSXUniversalPlayer "$(pwd)/Build/osx$project.exe" \
  -quit

echo 'Logs from build'
cat $(pwd)/unity.log