#!/bin/bash -e

echo "Hello again, ${IN_target}"
if ( "$JFROG_TASK_ID" -ne "" -and "$JFROG_TASK_ID" ne $null ) {
  Write-Output "message='Hello $IN_target from $JFROG_TASK_ID'" >> $JFROG_TASK_OUTPUTS_FILE
}

echo "installing hello-tool"
New-Item -Path "$HOME\.hello-tool" -ItemType Container
Copy-Item "bin\hello" -Destination "$HOME\.hello-tool\hello"
Write-Output "$HOME\.hello-tool" >> $JFROG_TASK_PATH_APPEND_FILE
Write-Output "HELLO_TOOL_PATH='$HOME/.hello-tool/hello'" > $JFROG_TASK_EXPORTS_FILE
