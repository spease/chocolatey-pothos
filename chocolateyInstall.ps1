$packageName= 'pothosSdr'
$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://downloads.myriadrf.org/builds/PothosSDR/PothosSDR-2019.06.09-vc14-x64.exe'

$packageArgs = @{
  packageName   = $packageName
  destination   = $toolsDir
  fileType      = 'exe'
  url64bit      = $url64
  silentArgs    = '/S'
  validExitCodes= @(0)
  softwareName  = 'PothosSDR*'
  checksum64    = '65a8981f4701ed3b0a794416dbea512e294956d28023a9ff57463807d2e12cc0'
  checksumType64= 'sha256'
}

Install-ChocolateyPackage @packageArgs
