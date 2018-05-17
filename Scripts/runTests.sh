#! /bin/sh
project="/CITestProject"
testLog="/TestResults.xml"
projectPath=$(dirname "$0")"/../"

echo "Project path: $(pwd)$project"
echo $(pwd)
ls -R $(pwd)

/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -silent-crashes \
  -projectPath $(pwd)$project \
  -editorTestsResultFile $(pwd)$testLog \
  -runEditorTests

testResult=$?

if [ $testResult = 0 ] ; then
  echo "UnitTests COMPLETED! Exited with $testResult"
  exit 0
else
  echo "UnitTests FAILED! Exited with $testResult"
  echo 'Test logs'
  cat $(pwd)$testLog
  exit 1
fi