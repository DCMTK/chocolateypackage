$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'dcmtk' # arbitrary name for the package, used in messages
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://dcmtk.org/chocolatey/dcmtk-3.6.9-win32-chocolatey.zip' # download url
$url64 = 'https://dcmtk.org/chocolatey/dcmtk-3.6.9-win64-chocolatey.zip' # download url
$checksum = '4fb11b460e779815f38c3d8de588ab0f'
$checksum64 = 'b8a0c0038c8ba36ae78a0676353c8f80'

Install-ChocolateyZipPackage $packageName $url -Checksum $checksum $toolsDir -Url64 $url64 -Checksum64 $checksum64
