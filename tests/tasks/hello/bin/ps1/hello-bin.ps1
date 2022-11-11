$ErrorActionPreference = "stop"

if (( $args[0] -ne "" ) -and ($args[0] -ne $null)) {
  $target = $args[0]
  Write-Output "Hello $target"
} else {
  Write-Output "Hello nobody"
}
