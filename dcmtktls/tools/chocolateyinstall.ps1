$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'dcmtktls' # arbitrary name for the package, used in messages
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'ftp://dicom.offis.de/pub/dicom/offis/software/dcmtk/release/bin/dcmtk-3.6.4-win32-dynamic-tls.zip' # download url
$url64 = 'ftp://dicom.offis.de/pub/dicom/offis/software/dcmtk/release/bin/dcmtk-3.6.4-win64-dynamic-tls.zip' # download url

Install-ChocolateyZipPackage $packageName $url -Checksum ab0551e0d95c8b8991d57167c17b7184 $toolsDir -Url64 $url64 -Checksum64 01e89d07acc2b9351026e17181c70dd2
