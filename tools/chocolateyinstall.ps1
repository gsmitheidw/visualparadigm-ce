$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url = 'https://www.visual-paradigm.com/downloads/vpce/Visual_Paradigm_CE_Win64.exe' 

$packageArgs = @{
  packageName   = 'visualparadigm-ce'
  unzipLocation = $toolsDir
  fileType      = 'exe' 
  url           = $url
  softwareName  = 'visualparadigm-ce*'
  checksum      = 'FA1ED2D7BF686198BC21FA2E0F94C0E682C9F40A46D2600720159E9ABA9CE3F0'
  checksumType  = 'sha256' 
  silentArgs    = '-q -console'
  validExitCodes= @(0, 3010, 1641)
 
}

Install-ChocolateyPackage @packageArgs 
