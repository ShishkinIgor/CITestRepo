#! /bin/sh
project="/CITestProject"

/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -projectPath $(pwd)$project \
  -executeMethod BuildScript.BuildOSX \
  -quit

testResult=$?

if [ $testResult = 0 ] ; then
  echo "UnitTests COMPLETED! Exited with $testResult"
  ls -R $(pwd)
  exit 0
else
  echo "UnitTests FAILED! Exited with $testResult"
  exit 1
fi