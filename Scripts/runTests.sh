#! /bin/sh
project="CITestProject"

echo $(pwd)/TestResults.xml

/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -projectPath $(pwd) \
  -editorTestsResultFile $(pwd)/TestResults.xml \
  -runEditorTests

testResult=$?

if [ $testResult = 0 ] ; then
  echo "UnitTests COMPLETED! Exited with $testResult"
  exit 0
else
  echo "UnitTests FAILED! Exited with $testResult"
  echo 'Test logs'
  cat $(pwd)/TestResults.xml
  exit 1
fi