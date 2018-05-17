#! /bin/sh
project="CITestProject"
testLog="TestResults.xml"
projectPath=$(dirname "$0")"/../"

echo "Project path: $projectPath$project"
echo $(pwd)

/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -silent-crashes \
  -projectPath $projectPath$project \
  -editorTestsResultFile $projectPath$testLog \
  -runEditorTests

testResult=$?

if [ $testResult = 0 ] ; then
  echo "UnitTests COMPLETED! Exited with $testResult"
  exit 0
else
  echo "UnitTests FAILED! Exited with $testResult"
  echo 'Test logs'
  cat $projectPath$testLog
  exit 1
fi