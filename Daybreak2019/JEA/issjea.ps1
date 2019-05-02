#JEA Constrained JEA endpoint for members of the IISAdminTeam
#WebAdministra
@{
    SchemaVersion = '2.0.0.0'
    GUID = '54c8d41b-6425-46ac-a2eb-8c0184d9c6e6'
    SessionType = 'RestrictedRemoteServer'
    GroupManagedServiceAccount =  'CONTOSO\gMSAcontoso'
    RoleDefinitions = @{ JEAcontoso = @{ RoleCapabilityFiles = 'C:\Program Files\WindowsPowershell\Modules\AccountActivityJEA\RoleCapabilities\JEAAccountActivityResetRole.psrc' } }
    }