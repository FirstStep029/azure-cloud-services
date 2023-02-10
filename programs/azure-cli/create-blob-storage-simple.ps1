# Reads Properties file
$blob_prop = ConvertFrom-StringData(Get-Content $PSScriptRoot/properties/create-blob-storage.properties -raw)

# Prepare Inut Arguments for Creating BLOB Storage
$arguments = @{} 
foreach ($elem in $blob_prop.GetEnumerator()) {
    if (($null -ne $elem.Value) -and ('' -ne $elem.Value)) {
        $arguments.Add("-$($elem.Name)", $elem.Value)
    } 
}

# # Login to Azure CLI
az login --service-principal -u $env:AZURE_APP_ID -p $env:AZURE_APP_SECRET --tenant $env:AZURE_TENANT --output none
if ($LASTEXITCODE -eq 0) {
    Write-Host "Azure Login Success"
}


# Check Storage Name is Valid
$account_count=1
$name_exists_flag=$false

while ($name_exists_flag -eq $false) {
    $account_name="$($arguments['-name'])$($account_count.ToString().PadLeft(3, "0"))"
    $name_exists=az storage account check-name --name $account_name --output json | ConvertFrom-Json
    $name_exists_flag=$name_exists.nameAvailable
    # if ($name_exists.nameAvailable -eq $false){
    #     Write-Host "EXISTS: $($account_name)"
    # } else {
    #     Write-Host "AVAILABLE: $($account_name)"
    # }
    $account_count++
}

# Create Blob Storage Account
az storage account create --name $account_name --resource-group $blob_prop.'resource-group' --location $blob_prop.'location' --output none
# az storage account create $arguments
if ($LASTEXITCODE -eq 0) {
    Write-Host "Blob Creation Success in RG: $($arguments['location']) with Name: '$($account_name)'"
}