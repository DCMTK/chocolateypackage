$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'dcmtk' # arbitrary name for the package, used in messages
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'ftp://dicom.offis.de/pub/dicom/offis/software/dcmtk/dcmtk362/bin/dcmtk-3.6.2-win32-dynamic.zip' # download url
$url64 = 'ftp://dicom.offis.de/pub/dicom/offis/software/dcmtk/dcmtk362/bin/dcmtk-3.6.2-win64-dynamic.zip' # download url

Install-ChocolateyZipPackage $packageName $url -Checksum B7AABBEC6DC14F72BAE6A2CC688CB0C0 $toolsDir -Url64 $url64 -Checksum64 87B85476006510DE8308F0DB3475DBA2
