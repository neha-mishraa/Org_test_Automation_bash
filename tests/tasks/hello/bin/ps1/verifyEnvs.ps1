$ErrorActionPreference = "stop"

$result = Get-Variable -ValueOnly -Name IN_target
if (( $result -eq "" ) -or ( $result -eq $null )) { throw "Error: IN_target not defined" }
$result = Get-Variable -ValueOnly -Name JFROG_TASK_CONTENTS_DIR
if (( $result -eq "" ) -or ( $result -eq $null )) { throw "Error: JFROG_TASK_CONTENTS_DIR not defined" }
$result = Get-Variable -ValueOnly -Name JFROG_TASK_ID
if (( $result -eq "" ) -or ( $result -eq $null )) { throw "Error: JFROG_TASK_ID not defined" }
$result = Get-Variable -ValueOnly -Name JFROG_TASK_NAME
if (( $result -eq "" ) -or ( $result -eq $null )) { throw "Error: JFROG_TASK_NAME not defined" }
$result = Get-Variable -ValueOnly -Name JFROG_TASK_PREFIX
if (( $result -eq "" ) -or ( $result -eq $null )) { throw "Error: JFROG_TASK_PREFIX not defined" }
$result = Get-Variable -ValueOnly -Name JFROG_TASK_RUNTIME_DIR
if (( $result -eq "" ) -or ( $result -eq $null )) { throw "Error: JFROG_TASK_RUNTIME_DIR not defined" }
$result = Get-Variable -ValueOnly -Name JFROG_TASK_STATE_DIR
if (( $result -eq "" ) -or ( $result -eq $null )) { throw "Error: JFROG_TASK_STATE_DIR not defined" }
$result = Get-Variable -ValueOnly -Name JFROG_TASK_SANITIZED_ID
if (( $result -eq "" ) -or ( $result -eq $null )) { throw "Error: JFROG_TASK_SANITIZED_ID not defined" }
$result = Get-Variable -ValueOnly -Name JFROG_TASK_OUTPUTS_FILE
if (( $result -eq "" ) -or ( $result -eq $null )) { throw "Error: JFROG_TASK_OUTPUTS_FILE not defined" }
$result = Get-Variable -ValueOnly -Name JFROG_TASK_EXPORTS_FILE
if (( $result -eq "" ) -or ( $result -eq $null )) { throw "Error: JFROG_TASK_EXPORTS_FILE not defined" }
$result = Get-Variable -ValueOnly -Name JFROG_TASK_PATH_APPEND_FILE
if (( $result -eq "" ) -or ( $result -eq $null )) { throw "Error: JFROG_TASK_PATH_APPEND_FILE not defined" }
$result = Get-Variable -ValueOnly -Name JFROG_CURRENT_WORKSPACE_DIR
if (( $result -eq "" ) -or ( $result -eq $null )) { throw "Error: JFROG_CURRENT_WORKSPACE_DIR not defined" }
