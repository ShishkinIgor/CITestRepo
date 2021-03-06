#! /bin/sh
project="/CITestProject"
projectPath=$(dirname "$0")

/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -projectPath $projectPath$project \
  -executeMethod BuildScript.BuildOSX \
  -quit

testResult=$?

if [ $testResult = 0 ] ; then
  echo "UnitTests COMPLETED! Exited with $testResult"
  exit 0
else
  echo "UnitTests FAILED! Exited with $testResult"
  exit 1
fi