# install-cl

Guide to install cl.exe for Windows from PowerShell.

1. Start `PowerShell` (e.g. by opening Windows Menu and search for Windows PowerShell)
2. Copy / paste the following lines:
```
Invoke-RestMethod -Uri https://aka.ms/vs/17/release/vs_buildtools.exe -OutFile vs_buildtools.exe
Start-Process -FilePath vs_buildtools.exe -ArgumentList "--add", "Microsoft.VisualStudio.Component.VC.Tools.x86.x64", "--add", "Microsoft.VisualStudio.Component.Windows10SDK.19041", "--norestart", "--passive", "--wait" -Wait -PassThru
Remove-Item vs_buildtools.exe
```
