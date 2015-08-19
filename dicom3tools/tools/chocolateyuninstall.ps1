$packageName = 'dicom3tools'
$zipFileName = 'dicom3tools_winexe_1.00.snapshot.20150717110018.zip'

Uninstall-ChocolateyZipPackage -PackageName $packageName -ZipFileName $zipFileName
