$dataset = "shrutimechlearn/churn-modelling"
$zip_file = "churn-modelling.zip"
$output_dir = "$env:OUTPUT_PATH"

Write-Output "dir : $output_dir"

try {
    Write-Output "Attempting Download Dataset : $dataset"
    kaggle datasets download -d $dataset -p "$outputdir" --unzip --force

    if (Test-Path "$outputdir\$zip_file"){
        Write-Output "Success!"
    } else{
        Write-Output "Download Failed"
    }

} catch {
    Write-Error "Error while attempting download : $_"
}

Write-Output "Script Terminated"