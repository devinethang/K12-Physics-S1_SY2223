# PowerShell script to create a zip file with HTML and images
$zipFileName = "K12-Physics-HTML-Site.zip"
$sourceDir = Get-Location

# Remove existing zip if it exists
if (Test-Path $zipFileName) {
    Remove-Item $zipFileName -Force
    Write-Host "Removed existing zip file"
}

# Create temporary directory for organizing files
$tempDir = "temp_zip_contents"
if (Test-Path $tempDir) {
    Remove-Item $tempDir -Recurse -Force
}
New-Item -ItemType Directory -Path $tempDir | Out-Null

Write-Host "Creating zip with HTML files and images..."

# Copy HTML files to temp directory
Write-Host "Copying HTML files..."
Copy-Item "*.html" -Destination $tempDir
Copy-Item "convert_md_to_html.py" -Destination $tempDir
Copy-Item "convert.bat" -Destination $tempDir

# Copy all chapter directories with images
Write-Host "Copying image directories..."
$chapterDirs = Get-ChildItem -Directory | Where-Object { $_.Name -match "^\d+" }
foreach ($dir in $chapterDirs) {
    Write-Host "  Copying $($dir.Name)..."
    Copy-Item $dir.FullName -Destination $tempDir -Recurse
}

# Create the zip file
Write-Host "Creating zip file..."
Compress-Archive -Path "$tempDir\*" -DestinationPath $zipFileName -Force

# Clean up temp directory
Remove-Item $tempDir -Recurse -Force

# Get zip file info
$zipInfo = Get-Item $zipFileName
$zipSizeMB = [Math]::Round($zipInfo.Length / 1MB, 2)

Write-Host ""
Write-Host "Zip file created successfully!"
Write-Host "File: $zipFileName"
Write-Host "Size: $zipSizeMB MB"
Write-Host "Contents: HTML files + all chapter images + conversion scripts"