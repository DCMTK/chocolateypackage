$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'dcmtk' # arbitrary name for the package, used in messages
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'ftp://dicom.offis.de/pub/dicom/offis/software/dcmtk/release/bin/dcmtk-3.6.3-win32-dynamic.zip' # download url
$url64 = 'ftp://dicom.offis.de/pub/dicom/offis/software/dcmtk/release/bin/dcmtk-3.6.3-win64-dynamic.zip' # download url

Install-ChocolateyZipPackage $packageName $url -Checksum a0b3d078aafd1b7170bc24eea6c0c9b5 $toolsDir -Url64 $url64 -Checksum64 f8683dfbdeb2df863bd0da8a4d118214
