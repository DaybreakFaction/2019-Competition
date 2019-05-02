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
            State           = 'Started'
            PhysicalPath    = 'C:\inetpub\wwwroot'
            DependsOn       = '[WindowsFeature]IIS'
        }

        WindowsFeature NLB
        {
            Ensure = "Present"             
            Name = "NLB"
        }

        WindowsFeature WID
        {
            Ensure = "Present"             
            Name = "Windows-Internal-Database"
        }       

        WindowsFeature PowerShell2
        {
            Ensure = "Absent"             
            Name = "PowerShell-V2"
        }           
        
        xWebsite DefaultSite    {
            Ensure          = 'Present'
            Name            = 'Default Web Site'
            State           = 'Stopped'
            PhysicalPath    = 'C:\inetpub\wwwroot'
            DependsOn       = '[WindowsFeature]IIS'
        }
       
        WindowsEventLog ApplicationEventlogSize
        {
            LogName            = 'Application'
            IsEnabled          = $true
            LogMode            = 'Circular'
            MaximumSizeInBytes = 4096000KB
        } # End of Windows Event Log Resource

    }
}