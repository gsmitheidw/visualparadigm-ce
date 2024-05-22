$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url = 'https://www.visual-paradigm.com/downloads/vpce/Visual_Paradigm_CE_Win64.exe' 

$packageArgs = @{
  packageName   = 'visualparadigm-ce'
  unzipLocation = $toolsDir
  fileType      = 'exe' 
  url           = $url
  softwareName  = 'visualparadigm-ce*'
  checksum      = '1fc2209db6c3cd3b404bab530543a8ffae976f2b9426310de67745b4957c275c'
  checksumType  = 'sha256' 
  silentArgs    = '-q -console'
  validExitCodes= @(0, 3010, 1641)
 
}

Install-ChocolateyPackage @packageArgs 
