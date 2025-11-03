::Roms
set baseImage=roms\Splatterworld_ROM.nes
set newImage=roms\Splatterworld (NEW).nes

::Folders
set projectFolder=%cd%
set spiroFolder=%projectFolder%\tools\spiro
set XkasFolder=%projectFolder%\tools

cd "%projectFolder%"

copy "%baseImage%" "%newImage%"

::Write script
"%SpiroFolder%\Spiro.exe" /ProjectDirectory "%projectFolder%" /Write /Verbose

::Apply Patches
"%XkasFolder%\xkas+.exe" -o "%newImage%" "asm/main.asm"

"%newImage%"

@pause
