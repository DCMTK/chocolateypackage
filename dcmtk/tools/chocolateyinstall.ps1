$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'dcmtk' # arbitrary name for the package, used in messages
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://dcmtk.org/chocolatey/dcmtk-3.6.7-win32-chocolatey.zip' # download url
$url64 = 'https://dcmtk.org/chocolatey/ddcmtk-3.6.7-win64-chocolatey.zip' # download url
$checksum = '5543210cab304792da9041081401e9a5'
$checksum64 = '32b8d23a7e34565c1da9ad74aa153f0e'

Install-ChocolateyZipPackage $packageName $url -Checksum $checksum $toolsDir -Url64 $url64 -Checksum64 $checksum64
