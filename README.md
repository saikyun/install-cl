# install-cl

Guide and script to install cl.exe for Windows from the Terminal.

## Short version

If you have already set up running remote scripts and know how profiles in the Terminal works, just run this command in a PowerShell:

```
Invoke-Expression $(Invoke-RestMethod https://raw.githubusercontent.com/saikyun/install-cl/main/install-build-tools.ps1)
```

Otherwise, keep reading.

## Setup Terminal

1. Start Terminal (open Windows Start Menu, then write `Terminal`)
   1. If you can't find Terminal, download it from the [Microsoft Store](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701)
2. Click the arrow next to the "+" button -- this arrow will be called "the menu arrow" from now on
3. Click "Settings"
4. Click "Startup"
5. Make sure "Default profile" is set to "Windows PowerShell"
4. Under "Profiles", click "Defaults"
5. Change "Starting Directory" to a directory where you want your terminal to start, I chose `%USERPROFILE%\dev`, which on my system is the same as `C:\Users\<username>\dev`

## Enable running remotely signed PowerShell Scripts

This allows essentially any PowerShell scripts to run on your system. This is done so that you can run the included .ps1 script for downloading and installing build tools.

As an alternative, you can just copy / paste the contents of the .ps1 scripts mentioned below, into your PowerShell.

1. Click the "+" button to create a new PowerShell tab
2. Run the command: `Start-Process powershell -Verb runas`
2. In the new Admin shell run: `Set-ExecutionPolicy RemoteSigned`
3. Close the Admin shell
4. Close Terminal

## Clone repo and install build tools

1. Open Terminal
2. Run the following command:
```
Invoke-Expression $(Invoke-RestMethod https://raw.githubusercontent.com/saikyun/install-cl/main/install-build-tools.ps1)
```
3. When the script is done, you should have new profiles in your Terminal  \
   Click the menu arrow, and click "Developer PowerShell for VS 2022"
4. Run: `cl.exe`  \
   You should get something like this, the important part is `for x64`:
   ```
   Microsoft (R) C/C++ Optimizing Compiler Version 19.32.31332 for x64
   Copyright (C) Microsoft Corporation.  All rights reserved.
   ```