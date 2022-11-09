$ErrorActionPreference = "stop"

Write-Output "Hello again, ${IN_target}"

if (("$JFROG_TASK_ID" -ne $null ) -and ("$JFROG_TASK_ID" -ne ""))
{
  Add-Content -Path "$JFROG_TASK_OUTPUTS_FILE" -Value "message=Hello $IN_target from $JFROG_TASK_ID"
}

Write-Output "installing hello-tool"
New-Item -Path "$HOME\.hello-tool" -ItemType "Container" -Force
Copy-Item -Path "bin\ps1\hello-bin.ps1" -Destination "$HOME\.hello-tool\hello.ps1" -Force
Add-Content -Path "$JFROG_TASK_PATH_APPEND_FILE" -Value "$HOME\.hello-tool"
if ( -not (Test-Path -Path "$JFROG_TASK_EXPORTS_FILE" -PathType Leaf)) {
  New-Item -Path "$JFROG_TASK_EXPORTS_FILE" -ItemType "file"
}
Add-Content -Path "$JFROG_TASK_EXPORTS_FILE" -Value "HELLO_TOOL_PATH=$HOME/.hello-tool/hello"
