$packageName = 'dcmtk'
$zipFileName = 'dcmtk-3.6.0-win32-i386.zip'

Uninstall-ChocolateyZipPackage -PackageName $packageName -ZipFileName $zipFileName
