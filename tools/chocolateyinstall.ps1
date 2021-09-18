$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/Swing-team/pendulums-web-client/releases/download/v1.1.0/Pendulums.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  softwareName  = 'Pendulums*'
  checksum      = 'BCA6BE34ED17626882595EB1F79512A94D16A7DF22C98FA0E5A9EDCEB42A30A8'
  checksumType  = 'sha256'
  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
