#https://ethernuno.wordpress.com/2014/04/20/install-adds-on-windows-server-2012-r2-with-powershell/
#http://blog.coretech.dk/kaj/installing-active-directory-domain-services-on-windows-server-2012-r2-core/

# Step 1: Change the name
Rename-Computer -NewName DC01
Restart-Computer -Force