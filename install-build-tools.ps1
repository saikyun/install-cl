# if url doesn't work, might need to get a fresh one here: https://docs.microsoft.com/en-us/visualstudio/releases/2022/release-history#release-dates-and-build-numbers
Invoke-RestMethod -Uri https://aka.ms/vs/17/release/vs_buildtools.exe -OutFile vs_buildtools.exe
Start-Process -FilePath vs_buildtools.exe -ArgumentList "--add", "Microsoft.VisualStudio.Component.VC.Tools.x86.x64", "--add", "Microsoft.VisualStudio.Component.Windows10SDK.19041", "--norestart", "--passive", "--wait" -Wait -PassThru

# Cleanup
Remove-Item vs_buildtools.exe