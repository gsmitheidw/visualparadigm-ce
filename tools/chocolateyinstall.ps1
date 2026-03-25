$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url = 'https://www.visual-paradigm.com/downloads/vpce/Visual_Paradigm_CE_Win64.exe' 

$packageArgs = @{
  packageName   = 'visualparadigm-ce'
  unzipLocation = $toolsDir
  fileType      = 'exe' 
  url           = $url
  softwareName  = 'visualparadigm-ce*'
  checksum      = '9261806879915D1970B81084E342B92EB9DECBD47238657A4AFE01F80D808F1A'
  checksumType  = 'sha256' 
  silentArgs    = '-q -console'
  validExitCodes= @(0, 3010, 1641)
 
}

Install-ChocolateyPackage @packageArgs 
