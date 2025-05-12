param spObjectId string = 'cd5b78b3-4cb1-443b-9919-85acb408fc5e'
param registrationName string = 'Provider‑Contributor'

targetScope = 'subscription'

module delegate 'Microsoft.ManagedServices/registrationDefinitions@2022-10-01-preview' = {
  name: registrationName
  scope: subscription()
  params: {
    registrationDefinitionName: registrationName
    managedByTenantId: '29d6890b-18f0-43c0-9d40-547b4d59e95a'
    authorizations: [
      {
        principalId: spObjectId
        roleDefinitionId: 'b24988ac-6180-42a0-ab88-20f7382dd24c'
      }
    ]
  }
}
