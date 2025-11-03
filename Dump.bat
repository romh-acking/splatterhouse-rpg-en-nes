::Folders
set projectFolder=%cd%
set spiroFolder=%projectFolder%\tools\spiro

cd "%projectFolder%"

::Dump script
"%spiroFolder%\Spiro.exe" /ProjectDirectory "%projectFolder%" /DumpScript /Verbose
@pause