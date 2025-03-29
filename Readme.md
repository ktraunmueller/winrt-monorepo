## Updating the Windows App SDK

When updating the Windows App SDK version, I think one has to manually copy 
the following files (respective platform) from 
- `.packages\Microsoft.WindowsAppSDK.1.5.241107002\runtimes\win-x64\native`
  to `Sources\CWinAppSDK\nuget\bin`
- `.packages\Microsoft.WindowsAppSDK.1.5.241107002\lib\win10-x64`
  to `Sources\CWinAppSDK\nuget\lib`
- `.packages\Microsoft.WindowsAppSDK.1.5.241107002\include` (.h files only!)
  to `Sources\CWinAppSDK\nuget\include`
