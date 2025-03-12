@echo off
mkdir data

:: Google Drive File IDs (Replace with your actual IDs)
set SAFE_FILE_ID=1WAhAUy1fCoH4G6DBDudmVVJq27S7BypR
set ZARR_FILE_ID=1b4ioHSCIEHsVu8cW5aaLbFrlPM8JaQN9

:: Destination file names
set SAFE_FILE_NAME=sentinel2_SAFE.SAFE.zip
set ZARR_FILE_NAME=sentinel2_cube.zarr.zip

:: Function to download from Google Drive
powershell -Command "& {\
    $url = 'https://drive.google.com/uc?export=download&id=%SAFE_FILE_ID%';\
    Invoke-WebRequest -Uri $url -OutFile data\%SAFE_FILE_NAME%;\
}"

powershell -Command "& {\
    $url = 'https://drive.google.com/uc?export=download&id=%ZARR_FILE_ID%';\
    Invoke-WebRequest -Uri $url -OutFile data\%ZARR_FILE_NAME%;\
}"

:: Extract and delete ZIP files
powershell -Command "Expand-Archive -Path data\%SAFE_FILE_NAME% -DestinationPath data\"
del data\%SAFE_FILE_NAME%

powershell -Command "Expand-Archive -Path data\%ZARR_FILE_NAME% -DestinationPath data\"
del data\%ZARR_FILE_NAME%

echo ✅ Download complete. Data is available in the 'data/' folder.