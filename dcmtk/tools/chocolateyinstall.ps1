$ErrorActionPreference = 'Stop'; # stop on all errors

$packageName = 'dcmtk' # arbitrary name for the package, used in messages
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://support.dcmtk.org/redmine/attachments/download/172/dcmtk-3.6.5-win32-dynamic.zip' # download url
$url64 = 'https://support.dcmtk.org/redmine/attachments/download/171/dcmtk-3.6.5-win64-dynamic.zip' # download url
$checksum = '94db84f86dbb06448f9c60023fc7ece9'
$checksum64 = '63ECDB9694B764396CA0848D85C90F8F'

Install-ChocolateyZipPackage $packageName $url -Checksum $checksum $toolsDir -Url64 $url64 -Checksum64 $checksum64
