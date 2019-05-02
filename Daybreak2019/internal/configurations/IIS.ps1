Configuration IIS {

    Import-Module -ModuleName "xWebAdministration"

    param
    (
        # Target nodes to apply the configuration
        [String[]] $NodeName = 'localhost'
    )
    Node $NodeName {
        WindowsFeature IIS {
                Ensure          = 'Present'
                Name            = 'Web-Server'
        }
        
        xWebsite DefaultSite    {
            Ensure          = 'Present'
            Name            = 'Default Web Site'
            State           = 'Stopped'
            PhysicalPath    = 'C:\inetpub\wwwroot'
            DependsOn       = '[WindowsFeature]IIS'
        }
    }
}