$packageName = 'dcmtk'
$zipFileName = 'dcmtk-3.6.4-win64-dynamic.zip'

Uninstall-ChocolateyZipPackage -PackageName $packageName -ZipFileName $zipFileName
