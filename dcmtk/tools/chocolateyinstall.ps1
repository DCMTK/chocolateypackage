$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'dcmtk' # arbitrary name for the package, used in messages
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://dcmtk.org/chocolatey/dcmtk-3.6.8-win32-chocolatey.zip' # download url
$url64 = 'https://dcmtk.org/chocolatey/dcmtk-3.6.8-win64-chocolatey.zip' # download url
$checksum = '76325012ff68a93506e42c186ebaa116'
$checksum64 = '84da6c75524504e42b09e32e8b7fdb49'

Install-ChocolateyZipPackage $packageName $url -Checksum $checksum $toolsDir -Url64 $url64 -Checksum64 $checksum64
