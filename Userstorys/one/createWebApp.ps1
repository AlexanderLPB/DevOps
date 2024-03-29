param (
    [string]$environment
)

function DeployToDev {
    Write-Host "Deploying to Dev environment..."
    az deployment group create --resource NAME_OF_YOUR_RESSOURCE_GROUP --template-file deploy-app.bicep --parameters Userstorys\one\dev.json --confirm-with-what-if
} # Die Pfade müssen eventuell angepasst werden
 
function DeployToTest {
    Write-Host "Deploying to Test environment..."
    az deployment group create --resource NAME_OF_YOUR_RESSOURCE_GROUP --template-file deploy-app.bicep --parameters Userstorys\one\test.json --confirm-with-what-if
} # Die Pfade müssen eventuell angepasst werden
 
function DeployToMain {
    Write-Host "Deploying to Main environment..."
    az deployment group create --resource NAME_OF_YOUR_RESSOURCE_GROUP --template-file deploy-app.bicep --parameters Userstorys\one\main.json --confirm-with-what-if
} # Die Pfade müssen eventuell angepasst werden
 
# Main script logic
if ($environment -eq 'dev') {
    DeployToDev
}
elseif ($environment -eq 'test') {
    DeployToTest
}
elseif ($environment -eq 'main') {
    DeployToMain
}
else {
    Write-Host "Invalid environment parameter. Please use 'dev', 'test', or 'main'."
}

// Um das PowerShell Script auszuführen benutze:
// ./createWebApp.ps1 -Environment dev  
// dev, test oder main als Environment möglich   
