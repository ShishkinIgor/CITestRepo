#! /bin/sh
project="/CITestProject"
testLog="TestResults.xml"
projectPath=$(dirname "$0")

/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -projectPath $projectPath$project \
  -editorTestsResultFile $projectPath$testLog \
  -runEditorTests

testResult=$?

if [ $testResult = 0 ] ; then
  echo "UnitTests COMPLETED! Exited with $testResult"
  exit 0
else
  echo "UnitTests FAILED! Exited with $testResult"
  exit 1
fi