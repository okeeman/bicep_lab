@description('Name of the storage account')
param storageAccountName string = 'toylaunch${uniqueString(resourceGroup().id)}'

resource storageAccount 'Microsoft.Storage/storageAccounts@2023-05-01' = {
  name: storageAccountName
  location: 'spaincentral'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: { }
}

output storageAccountId string = storageAccount.id
