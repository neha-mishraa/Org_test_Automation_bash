#!/bin/bash -e

if [ -z "$IN_target" ]; then exit 1; fi
if [ -z "$JFROG_TASK_CONTENTS_DIR" ]; then exit 1; fi
if [ -z "$JFROG_TASK_ID" ]; then exit 1; fi
if [ -z "$JFROG_TASK_NAME" ]; then exit 1; fi
if [ -z "$JFROG_TASK_PREFIX" ]; then exit 1; fi
if [ -z "$JFROG_TASK_RUNTIME_DIR" ]; then exit 1; fi
if [ -z "$JFROG_TASK_STATE_DIR" ]; then exit 1; fi
if [ -z "$JFROG_TASK_SANITIZED_ID" ]; then exit 1; fi
if [ -z "$JFROG_TASK_OUTPUTS_FILE" ]; then exit 1; fi
if [ -z "$JFROG_TASK_EXPORTS_FILE" ]; then exit 1; fi
if [ -z "$JFROG_TASK_PATH_APPEND_FILE" ]; then exit 1; fi
if [ -z "$JFROG_CURRENT_WORKSPACE_DIR" ]; then exit 1; fi