$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'dcmtk' # arbitrary name for the package, used in messages
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'ftp://dicom.offis.de/pub/dicom/offis/software/dcmtk/dcmtk362/bin/dcmtk-3.6.2-win64-dynamic.zip' # download url

Install-ChocolateyZipPackage $packageName $url $toolsDir
