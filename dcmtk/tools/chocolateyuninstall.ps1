$packageName = 'dcmtk'
$zipFileName = 'dcmtk-3.6.2-win64-dynamic.zip'

Uninstall-ChocolateyZipPackage -PackageName $packageName -ZipFileName $zipFileName
