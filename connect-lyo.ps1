$USERNAME = ""
$PASS = ""
$Password = ConvertTo-SecureString "$PASS" -asPlainText -force
$LiveCred = New-Object System.Management.Automation.PSCredential -ArgumentList $USERNAME,$Password
$CSSession = New-CsOnlineSession -Credential $LiveCred
Import-PSSession $CSSession -AllowClobber