#https://ethernuno.wordpress.com/2014/04/20/install-adds-on-windows-server-2012-r2-with-powershell/
#http://blog.coretech.dk/kaj/installing-active-directory-domain-services-on-windows-server-2012-r2-core/

# Step 2: Add the ADDS Server Role
Import-Module ServerManager
Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools

# Step 3: Install a new Forest
Import-Module ADDSDeployment

$Password = ConvertTo-SecureString -AsPlainText -String P0rkrainred -Force

Install-ADDSForest `
-DomainName adtest.com `
-SafeModeAdministratorPassword $Password `
-DomainNetBIOSName adtest `
-DomainMode Win2012R2 `
-ForestMode Win2012R2 `
#-DatabasePath "%SYSTEMROOT%\NTDS" `
#-LogPath "%SYSTEMROOT%\NTDS" `
#-SYSVOLPath "%SYSTEMROOT%\NTDS" `
-NoRebootOnCompletion `
-InstallDNS `
-Force
#-CreateDNSDelegation `