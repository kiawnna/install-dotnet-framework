function Download-And-Install-Framework() {
    # net 4.0   -> http://download.microsoft.com/download/1/B/E/1BE39E79-7E39-46A3-96FF-047F95396215/dotNetFx40_Full_setup.exe
    # net 4.5   -> http://download.microsoft.com/download/B/A/4/BA4A7E71-2906-4B2D-A0E1-80CF16844F5F/dotNetFx45_Full_setup.exe
    # net 4.5.2 -> http://download.microsoft.com/download/E/2/1/E21644B5-2DF2-47C2-91BD-63C560427900/NDP452-KB2901907-x86-x64-AllOS-ENU.exe
    # net 4.6   -> http://download.microsoft.com/download/1/4/A/14A6C422-0D3C-4811-A31F-5EF91A83C368/NDP46-KB3045560-Web.exe => except win 10
    # net 4.7.2 -> https://download.microsoft.com/download/3/3/2/332D9665-37D5-467A-84E1-D07101375B8C/NDP472-KB4054531-Web.exe
    $url = "http://download.microsoft.com/download/E/2/1/E21644B5-2DF2-47C2-91BD-63C560427900/NDP452-KB2901907-x86-x64-AllOS-ENU.exe"
    $output = "$PSScriptRoot\netFrameworkInstaller.exe"
    $start_time = Get-Date
       
    Invoke-WebRequest -Uri $url -OutFile $output  
    Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"  
      
    Start-Process netFrameworkInstaller.exe 
    # -NoNewWindow -Wait
}

Download-And-Install-Framework