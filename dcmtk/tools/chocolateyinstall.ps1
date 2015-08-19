$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'dcmtk' # arbitrary name for the package, used in messages
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'ftp://dicom.offis.de/pub/dicom/offis/software/dcmtk/dcmtk360/bin/dcmtk-3.6.0-win32-i386.zip' # download url

Install-ChocolateyZipPackage $packageName $url $toolsDir
