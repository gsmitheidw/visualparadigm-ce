$ErrorActionPreference = 'Stop';

[array]$key = Get-UninstallRegistryKey -SoftwareName 'visualparadigm-ce*'

$packageName='visualparadigm-ce'

if ($key.Count -eq 1) {

  $key | ForEach-Object {
  $packageArgs = @{
    packageName    = $packageName
    fileType       = 'EXE'
    silentArgs     = '-q'
    validExitCodes = @(0)
    file           = "C:\Program Files\Visual Paradigm CE 17.1\uninstaller\uninstall.exe"
  }
 Uninstall-ChocolateyPackage @packageArgs
 }

}
else {
Write-Warning "$key.Count matches found, aborting multiple copy uninstall!"

}



