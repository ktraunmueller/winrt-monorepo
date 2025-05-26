## Updating the Windows App SDK

Windows App SDK runtime installers:
https://learn.microsoft.com/en-gb/windows/apps/windows-app-sdk/downloads-archive

When updating the Windows App SDK version, I think one has to manually copy 
the following files (respective platform) from 
- `.packages\Microsoft.WindowsAppSDK.1.5.241107002\runtimes\win-x64\native` -> `Sources\CWinAppSDK\nuget\bin`
- `.packages\Microsoft.WindowsAppSDK.1.5.241107002\lib\win10-x64` -> `Sources\CWinAppSDK\nuget\lib`
- `.packages\Microsoft.WindowsAppSDK.1.5.241107002\include` (.h files only!) -> `Sources\CWinAppSDK\nuget\include`

To check the current Windows App SDK version, see
`Sources\CWinAppSDK\nuget\include\WindowsAppSDK-VersionInfo.h`

It looks like WINDOWSAPPSDK_RUNTIME_VERSION_DOTQUADSTRING corresponds to the output of
```
winget list --id Microsoft.WindowsAppRuntime
```

To list available versions:
```
winget search "Microsoft.WindowsAppRuntime"
```