$src = 'https://api-us1.xbc.trendmicro.com/api/public/download_xbc_agent/v1.0/7329d0a3-f04c-447e-b4c4-67a99ec43176'
$des = "c:\xbc.exe"
Invoke-WebRequest -uri $src -OutFile $des
Unblock-File $des
sleep 100
start c:\xbc.exe
sleep 300
