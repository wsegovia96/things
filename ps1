$sourcePath = "C:\Path\to\source\files"
$destinationPath = "\\ServerB\SharedFolder"

# Obtener la lista de archivos en el directorio de origen
$files = Get-ChildItem $sourcePath

# Copiar cada archivo al directorio de destino
foreach ($file in $files) {
    $destinationFilePath = Join-Path -Path $destinationPath -ChildPath $file.Name
    Copy-Item -Path $file.FullName -Destination $destinationFilePath -Force
}

Write-Host "La copia de archivos ha finalizado."
