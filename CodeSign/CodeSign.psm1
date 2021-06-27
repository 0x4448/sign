function Set-Signature {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory=$true)]
        [string[]]$FilePath,

        [string]$Thumbprint = "$env:PSCodeSigningCertificate"

    )

    if ($null -eq $Thumbprint) {
        $Cert = (Get-ChildItem Cert:\CurrentUser\My -CodeSigningCert)[0]
    }
    else {
        $Cert = Get-ChildItem Cert:\CurrentUser\My -CodeSigningCert | Where-Object Thumbprint -eq $Thumbprint
    }
    if ($null -eq $Cert) {
        throw "Cannot find a code signing certificate."
    }
    foreach ($Path in $FilePath) {
        Set-AuthenticodeSignature -Certificate $Cert -FilePath $Path
    }
}

New-Alias -Name sign -Value Set-Signature
