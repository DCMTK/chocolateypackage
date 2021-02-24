$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'dcmtktls' # arbitrary name for the package, used in messages
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = '
https://dcmtk.org/chocolatey/dcmtk-3.6.6-win32-chocolatey-tls.zip' # download url
$url64 = '
https://dcmtk.org/chocolatey/dcmtk-3.6.6-win64-chocolatey-tls.zip' # download url
$checksum = 'd40e417e40b93b93386ecd969aaa9ca7'
$checksum64 = '54784ec411e648b60d4a5a32dc69d9eb'

Install-ChocolateyZipPackage $packageName $url -Checksum $checksum $toolsDir -Url64 $url64 -Checksum64 $checksum64
