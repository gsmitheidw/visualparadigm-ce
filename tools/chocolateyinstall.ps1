$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url = "https://www.visual-paradigm.com/downloads/vpce/Visual_Paradigm_CE_Win32.exe"
$url64 = "https://www.visual-paradigm.com/downloads/vpce/Visual_Paradigm_CE_Win64.exe"

$packageArgs = @{
  packageName   = 'visualparadigm-ce'
  unzipLocation = $toolsDir
  fileType      = 'exe' 
  url           = $url
  url64bit      = $url64
  softwareName  = 'visualparadigm-ce*' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique
  checksum      = '28948C1EE19F0EBD86FFD1FD83E2D1B5535674C6FCE9C13805331ACC829A727C'
  checksumType  = 'sha256' 
  checksum64    = '55E8437E47006BC67F1AFB2CA3CF5FBE5F520237BCE0942328B549BC21AF56D6'
  checksumType64= 'sha256' 
  silentArgs    = '-q -console'
  validExitCodes= @(0, 3010, 1641)
 
}

Install-ChocolateyPackage @packageArgs 
