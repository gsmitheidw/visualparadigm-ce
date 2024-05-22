$ErrorActionPreference = 'Stop';

# Get all uninstall registry keys for visual paradigm
[array]$keys = Get-UninstallRegistryKey -SoftwareName 'visualparadigm-ce*'

$packageName = 'visualparadigm-ce'

if ($keys.Count -gt 0) {
    $keys | ForEach-Object {
        # Get the UninstallString from the registry key
        $uninstallString = $_.UninstallString

            # Validate if the executable path exists
            if (Test-Path ($uninstallString -replace '"', '')) {
                $packageArgs = @{
                    packageName    = $packageName
                    fileType       = 'EXE'
                    silentArgs     = '-q'
                    validExitCodes = @(0)
                    file           = $uninstallString
                }

                # Uninstall the package
                Uninstall-ChocolateyPackage @packageArgs
            } else {
                Write-Warning "Uninstall executable not found at path: $uninstallString"
            }
        
       } 
    }
} else {
    Write-Warning "No matches found for software name '$packageName'."
}

