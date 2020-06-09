$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'dcmtk' # arbitrary name for the package, used in messages
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'ftp://dicom.offis.de/pub/dicom/offis/software/dcmtk/release/bin/dcmtk-3.6.5-win32-dynamic.zip' # download url
$url64 = 'ftp://dicom.offis.de/pub/dicom/offis/software/dcmtk/release/bin/dcmtk-3.6.5-win64-dynamic.zip' # download url
$checksum = '94db84f86dbb06448f9c60023fc7ece9'
$checksum64 = 'a8990313c4df70dc6a8507babf5f5b3ade1bb703'

Install-ChocolateyZipPackage $packageName $url -Checksum $checksum $toolsDir -Url64 $url64 -Checksum64 $checksum64