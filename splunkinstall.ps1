[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
$src = 'https://www.splunk.com/bin/splunk/DownloadActivityServlet?architecture=x86_64&platform=windows&version=8.1.3&product=splunk&filename=splunk-8.1.3-63079c59e632-x64-release.msi&wget=true'
$des = "c:\splunk-8.1.3-63079c59e632-x64-release.msi"
Invoke-WebRequest -uri $src -OutFile $des
sleep 150
Unblock-File $des
msiexec.exe /i c:\splunk-8.1.3-63079c59e632-x64-release.msi AGREETOLICENSE=Yes SPLUNKUSERNAME=SplunkAdmin SPLUNKPASSWORD=MyNewPassword /q /l*v C:\SplunkInstall.log
Invoke-WebRequest -uri "https://raw.githubusercontent.com/zcmyron/armtemplates/main/dashboard_template.xml" -OutFile "c:\dashboard_template.xml"
sleep 150
