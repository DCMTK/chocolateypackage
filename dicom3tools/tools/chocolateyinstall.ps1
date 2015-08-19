$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'dicom3tools' # arbitrary name for the package, used in messages
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'http://www.dclunie.com/dicom3tools/workinprogress/winexe/dicom3tools_winexe_1.00.snapshot.20150717110018.zip' # download url

Install-ChocolateyZipPackage $packageName $url $toolsDir
