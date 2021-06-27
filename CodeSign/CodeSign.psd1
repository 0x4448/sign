@{
    RootModule = 'CodeSign.psm1'
    Author = '0x4448 <86135470+0x4448@users.noreply.github.com>'
    CompanyName = 'None'
    ModuleVersion = '0.0.1'
    GUID = '19c9c724-4634-4dca-a54e-c6f3cdea8f35'
    Copyright = 'Copyright (c) 2021 0x4448'
    Description = 'Sign PowerShell scripts with a simple command.'
    PowerShellVersion = '5.1'
    CompatiblePSEditions = @('Desktop')
    FunctionsToExport = @('Set-Signature')
    AliasesToExport = @('sign')
    VariablesToExport = @('')
    PrivateData = @{
        PSData = @{
            Tags = @('helper')
            LicenseUri = 'https://github.com/0x4448/sign/blob/main/LICENSE'
            ProjectUri = 'https://github.com/0x4448/sign'
            IconUri = ''
            ReleaseNotes = @'
'@
        }
    }
}
