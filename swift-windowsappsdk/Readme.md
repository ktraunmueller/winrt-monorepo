## Updating the Windows App SDK

Windows App SDK runtime installers:
https://learn.microsoft.com/en-gb/windows/apps/windows-app-sdk/downloads-archive

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