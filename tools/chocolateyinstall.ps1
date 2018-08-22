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
  checksum      = '00777d6eb58e541a93c5ca0eafeb32eba57d09cc2e0482a02c92e706d6420cd9'
  checksumType  = 'sha256' 
  checksum64    = '6815bd8602aa6b42edb3589c7604993b83d4c9ac256b55d21b1f00493251e9d1'
  checksumType64= 'sha256' 
  silentArgs    = '-q -console'
  validExitCodes= @(0, 3010, 1641)
 
}

Install-ChocolateyPackage @packageArgs 
