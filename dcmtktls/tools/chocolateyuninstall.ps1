$packageName = 'dcmtktls'
$zipFileName = 'dcmtk-3.6.4-win64-dynamic-tls.zip'

Uninstall-ChocolateyZipPackage -PackageName $packageName -ZipFileName $zipFileName
