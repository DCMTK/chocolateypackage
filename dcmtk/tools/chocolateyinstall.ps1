$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'dcmtk' # arbitrary name for the package, used in messages
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://dcmtk.org/chocolatey/dcmtk-3.7.0-win32-chocolatey.zip' # download url
$url64 = 'https://dcmtk.org/chocolatey/dcmtk-3.7.0-win64-chocolatey.zip' # download url
$checksum = 'a981148be73083ff96d939ba9f3488eb'
$checksum64 = '0deddf2aba241b7869b89a053abce2de'

Install-ChocolateyZipPackage $packageName $url -Checksum $checksum $toolsDir -Url64 $url64 -Checksum64 $checksum64
