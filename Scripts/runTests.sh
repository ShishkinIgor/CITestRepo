#! /bin/sh
project="CITestProject"

/Applications/Unity/Unity.app/Contents/MacOS/Unity \
  -batchmode \
  -nographics \
  -silent-crashes \
  -projectPath $(pwd) \
  -runEditorTests

if [ $? = 0 ] ; then
  echo "UnitTests COMPLETED! Exited with $?"
  exit 0
else
  echo "UnitTests FAILED! Exited with $?"
  echo 'Test logs'
  cat $(pwd)/integrationTests.log
  exit 1
fi