$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'dcmtk' # arbitrary name for the package, used in messages
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://dcmtk.org/chocolatey/dcmtk-3.6.6-win32-chocolatey.zip' # download url
$url64 = 'https://dcmtk.org/chocolatey/dcmtk-3.6.6-win64-chocolatey.zip' # download url
$checksum = '16c067ce756ae50d2d9cb1acb7da26d0'
$checksum64 = 'a7013b5153cd9b78ac0bf19c151870b2'

Install-ChocolateyZipPackage $packageName $url -Checksum $checksum $toolsDir -Url64 $url64 -Checksum64 $checksum64
