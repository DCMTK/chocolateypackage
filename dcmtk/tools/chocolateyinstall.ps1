$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'dcmtk' # arbitrary name for the package, used in messages
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'ftp://dicom.offis.de/pub/dicom/offis/software/dcmtk/release/bin/dcmtk-3.6.4-win32-dynamic.zip' # download url
$url64 = 'ftp://dicom.offis.de/pub/dicom/offis/software/dcmtk/release/bin/dcmtk-3.6.4-win64-dynamic.zip' # download url

Install-ChocolateyZipPackage $packageName $url -Checksum 7c398a26909da52a97969a38bc440eb6 $toolsDir -Url64 $url64 -Checksum64 8267c09ee908bbef63eac9f705709a63
