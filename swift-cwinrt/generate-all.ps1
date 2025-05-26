$folders = @("swift-cwinrt", "swift-windowsfoundation", "swift-uwp", "swift-windowsappsdk", "swift-winui")

foreach ($folder in $folders) {
    Write-Output "Processing $folder..."
    Set-Location -Path $folder
    swift package clean
    Remove-Item -Path .build -Recurse -Force -ErrorAction SilentlyContinue
    Remove-Item -Path .generated -Recurse -Force -ErrorAction SilentlyContinue
    ./generate-bindings.ps1
    Set-Location -Path ..
}