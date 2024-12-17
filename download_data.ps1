$dataset = "shrutimechlearn/churn-modelling"
$output_dir = $env:OUTPUT_PATH -replace '(^"|"$)', ''

Write-Output "OUTPUT_PATH: $output_dir"
Write-Output "Attempting to download dataset: $dataset"

if (-not $output_dir) {
    Write-Error "ERROR: OUTPUT_PATH is not set!"
    exit 1
}

if (-not (Test-Path -Path $output_dir)) {
    Write-Output "Creating output directory: $output_dir"
    New-Item -ItemType Directory -Path $output_dir -Force | Out-Null
}

try {
    kaggle datasets download -d $dataset -p "$output_dir" --unzip --force

    if ($?) {
        Write-Output "Success! Dataset downloaded to: $output_dir"
    } else {
        Write-Error "Download failed!"
    }
} catch {
    Write-Error "Error while attempting download: $_"
}

Write-Output "Script Terminated"