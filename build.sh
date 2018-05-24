#! /bin/sh
project="/CITestProject"
projectPath=$(dirname "$0")

echo "Current path:"
echo projectPath

echo "Attempting to build $projectPath$project for OSX"
/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -nographics \
  -silent-crashes \
  -logFile $projectPath/unity.log \
  -projectPath $projectPath$project \
  -buildOSXUniversalPlayer "$projectPath/Build/osx$project.exe" \
  -quit

testResult=$?

if [ $testResult = 0 ] ; then
  echo "OSX build COMPLETED! Exited with $testResult"
  exit 0
else
  echo "OSX build FAILED! Exited with $testResult"
  echo 'Logs from build'
  cat $projectPath/unity.log
  exit 1
fi