$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'dcmtktls' # arbitrary name for the package, used in messages
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://support.dcmtk.org/redmine/attachments/download/169/dcmtk-3.6.5-win32-dynamic-tls-complete.zip' # download url
$url64 = 'https://support.dcmtk.org/redmine/attachments/download/170/dcmtk-3.6.5-win64-dynamic-tls-complete.zip' # download url
$checksum = '72a97f9d4063753d2295e133c38d9f40'
$checksum64 = '798b1ad4105967a793268140d8e5613d'

Install-ChocolateyZipPackage $packageName $url -Checksum $checksum $toolsDir -Url64 $url64 -Checksum64 $checksum64
