# Daybreak Faction 2019's solution to the Iron Scripter 2019 competition

# 
   ```
   +------------------------------------------------+
   | D A Y B R E A K                                |
   | ---------------                                |
   | A  N E W   L I G H T   F R O M   S C R I P T ! |
   +------------------------------------------------+

 MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
 MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWKxollld0WMMMMMMMMMMMMMMMMMMMMMMMMMM
 MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWO,      .kWMMMMMMMMMMMMMMMMMMMMMMMMM
 MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWKo.    .dNWNK00KNWMMMMMMMMMMMMMMMMM
 MMMMMMMMMMMMMMMMMMMMMMMWXKXWMMMMMMMMMMMMMMMMMMWo     ;c;'....'lKMMMMMMMMMMMMMMMM
 MMMMMMMMMMMWNNWMMMWKOdc,...;lkNMMMMMMMMMMMMMWNk'            ..lKMMMMMMMMMMMMMMMM
 MMMMMMMMMMMWx;;:::,.          :0MMMMMWNXK0Odc'.      ..,:lok0XWMMMMMMMMMMMMMMMMM
 MMMMMMMMMMMMX:       ...      ;0MMXxl:'...         .l0XWMMMMMMMMMMMMMMMMMMMMMMMM
 MMMMMMMMMMMMWo   ,lxk0Xd.    lXMMMNOo:,,,,;coxo.   oNNKk0NWMMMMMMMMMMMMMMMMMMMMM
 MMMMMMMMMMMMWo  'OMMMMMd.   .kMMMMMMMWWWWWWMMMK,  ,0M0, .'c0WMMMMMMMMMMMMMMMMMMM
 MMMMMMMMMMMMWo  '0MMMMMd.   .kMMMMMMMMWKO0XWMMO..oKNM0'    .looooodOXWMMMMMMMMMM
 MMMMMMMMMMMMWo  ,0WNKkl'    .kMMMMMMMMWd,..:xKc.;xxdl;.             .lXMMMMMMMMM
 MMMMMMMMMMMMWo  .;:'.       'OMMMMMMWWNx:.   .             .'...     .OMMMMMMMMM
 MMMMMMMMMMMMWo      .:o;    :XMN0kdl:;,.      ':ldxd;    ,kXNKKKOxxxxONMMMMMMMMM
 MMMMMMMMMMMMWo  .,lOXWMx.   :NMXl.    ....   ;KMMWKo.    'cloxOKNWMMMMMMMMMMMMMM
 MMMMMMMMMMMMWo  '0MMMMMx.   cNMMNx:cdkKXXk'  ,xdc;.            .;OMMMMMMMMMMMMMM
 MMMMMMMMMMMMWo  ,0MMMMWd.   cNMMMMWMWNX00d.           ,lllllll:;lKMMMMMMMMMMMMMM
 MMMMMMMMMMMMNc  ,0MWXOo'    :NMMMMMNd,...    'col.   .xWMMMMMMWWMMMMMMMMMMMMMMMM
 MMMMMMMMMMMM0'  .cl;.       :NMMMMMWO:';:;.  ;OWNl   cXMMMMMMMMMMMMMMMMMMMMMMMMM
 MMMMMMMMMMMM0'       .''    :NMMMMMMMNNWMk.   cNNc  .OMMMMMMMMMMMMMMMMMMMMMMMMMM
 MMMMMMMMNKko,     .;o0NK;   lNMMMMMMMMMWWd.  .xWWd. .OMMMMMMMMMMMMKOXMMMMMMMMMMM
 MMMMMMMWO,     .;o0NMMMW0c,oXMMMMMMMMMM0d,   cXMMx. .OMMMMMMMMMMMWd'dWMMMMMMMMMM
 MMMMMMMMNo. .;dKWMMMMMMMMWWWMMMMMMMMMMK;.   ;KMMMx. .dWMMMMMMMMMM0' '0MMMMMMMMMM
 MMMMMMMMMNOokWMMMMMMMMMMMMMMMMMMMMMMWO,    :KMMMMk.  :XMMMMMMMMM0;   ;KMMMMMMMMM
 MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMXo.   .lXMMMMMX;  .dNMMMMMWXd.     lNMMMMMMMM
 MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNk;  .:oOWMMMMMMWx.   ,oxkkd:.       .OMMMMMMMM
 MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWXx:..'cOWMMMMMMMMMMWO:.                .dWMMMMMMM
 MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMXxodk0NWMMMMMMMMMMMMMMWKxl:,........,;coONMMMMMMMM
 MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMWXKKXXXKXWWMMMMMMMMMMMM
 MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM
 ================================================================================
 ```


# Project Setup Instructions
## Working with the layout

 - Don't touch the psm1 file
 - Place functions you export in `functions/` (can have subfolders)
 - Place private/internal functions invisible to the user in `internal/functions` (can have subfolders)
 - Don't add code directly to the `postimport.ps1` or `preimport.ps1`.
   Those files are designed to import other files only.
 - When adding files you load during `preimport.ps1`, be sure to add corresponding entries to `filesBefore.txt`.
   The text files are used as reference when compiling the module during the build script.
 - When adding files you load during `postimport.ps1`, be sure to add corresponding entries to `filesAfter.txt`.
   The text files are used as reference when compiling the module during the build script.

## Setting up CI/CD

> To create a PR validation pipeline, set up tasks like this:

 - Install Prerequisites (PowerShell Task; VSTS-Prerequisites.ps1)
 - Validate (PowerShell Task; VSTS-Validate.ps1)
 - Publish Test Results (Publish Test Results; NUnit format; Run no matter what)

> To create a build/publish pipeline, set up tasks like this:

 - Install Prerequisites (PowerShell Task; VSTS-Prerequisites.ps1)
 - Validate (PowerShell Task; VSTS-Validate.ps1)
 - Build (PowerShell Task; VSTS-Build.ps1)
 - Publish Test Results (Publish Test Results; NUnit format; Run no matter what)