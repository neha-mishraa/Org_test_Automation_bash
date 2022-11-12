#!/bin/bash -e

echo "Hello again, ${IN_target}"
if [ -n "$JFROG_TASK_ID" ]; then
  echo "message=\"Hello $IN_target from $JFROG_TASK_ID\"" >> $JFROG_TASK_OUTPUTS_FILE
fi

echo "installing hello-tool"
mkdir -p $HOME/.hello-tool
cp bin/sh/hello $HOME/.hello-tool/hello
echo "$HOME/.hello-tool" > $JFROG_TASK_PATH_APPEND_FILE
echo "HELLO_TOOL_PATH=$HOME/.hello-tool/hello" > $JFROG_TASK_EXPORTS_FILE
