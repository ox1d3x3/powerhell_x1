$freemem = Get-WmiObject -Class Win32_OperatingSystem
 
# Display free memory on PC/Server

Get-Date 
echo " "
"  System Information " | meow
" --------------------"
echo " "
"System Name : {0}" -f $freemem.csname | Write-Host -ForegroundColor Green
"OS : {0}" -f (Get-CimInstance -ClassName CIM_OperatingSystem).Caption |  Write-Host -ForegroundColor Blue 
"Free RAM : {0}" -f ([math]::round(($freemem.FreePhysicalMemory / 1024 / 1024), 2)) + "GB" | Write-Host -ForegroundColor Red,Blue

#echo " "



