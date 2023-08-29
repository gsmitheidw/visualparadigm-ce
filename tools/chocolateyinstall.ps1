$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url = 'https://www.visual-paradigm.com/downloads/vpce/Visual_Paradigm_CE_Win64.exe' 

$packageArgs = @{
  packageName   = 'visualparadigm-ce'
  unzipLocation = $toolsDir
  fileType      = 'exe' 
  url           = $url
  softwareName  = 'visualparadigm-ce*'
  checksum      = '7650A742D8C75627E3EB967FB0018E935F3404222911EFDDF9DB150197201349'
  checksumType  = 'sha256' 
  silentArgs    = '-q -console'
  validExitCodes= @(0, 3010, 1641)
 
}

Install-ChocolateyPackage @packageArgs 
