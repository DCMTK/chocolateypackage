$packageName = 'dcmtk'
$zipFileName = 'dcmtk-3.6.3-win64-dynamic.zip'

Uninstall-ChocolateyZipPackage -PackageName $packageName -ZipFileName $zipFileName
