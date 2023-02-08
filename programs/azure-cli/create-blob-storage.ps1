# Reads Properties file
$blob_prop = ConvertFrom-StringData(Get-Content $PSScriptRoot/properties/create-blob-storage.properties -raw)

# Prepare Inut Arguments for Creating BLOB Storage
$arguments = @{} 
foreach ($elem in $blob_prop.GetEnumerator()) {
    if (($null -ne $elem.Value) -and ('' -ne $elem.Value)) {
        $arguments.Add($elem.Name, $elem.Value)
    } 
}

# Login to Azure CLI
& $PSScriptRoot/login.ps1


# Check Storage Name is Valid
$name_exists = az storage account check-name --name $blob_prop.'name' | ConvertFrom-Json

if($name_exists.nameAvailable) {
    Write-Host "Name '$($blob_prop.'name')' Available."
} else {
    Write-Host "Name '$($blob_prop.'name')' Already Taken."
    exit 1
}

# Create Blob Storage Account
# az storage account create --name $blob_prop.'name' --resource-group $blob_prop.'resource-group' --location $blob_prop.'region'
az storage account create $arguments