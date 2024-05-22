$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url = 'https://www.visual-paradigm.com/downloads/vpce/Visual_Paradigm_CE_Win64.exe' 

$packageArgs = @{
  packageName   = 'visualparadigm-ce'
  unzipLocation = $toolsDir
  fileType      = 'exe' 
  url           = $url
  softwareName  = 'visualparadigm-ce*'
  checksum      = '1FC2209DB6C3CD3B404BAB530543A8FFAE976F2B9426310DE67745B4957C275C'
  checksumType  = 'sha256' 
  silentArgs    = '-q -console'
  validExitCodes= @(0, 3010, 1641)
 
}

Install-ChocolateyPackage @packageArgs 
