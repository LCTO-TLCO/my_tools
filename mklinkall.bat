@echo on

if "%~1"=="" (goto USAGE)
if "%~2"=="" (goto USAGE)

set file_extention=%1
set to_path=%2

for %%i in (*.%file_extention%) do (
mklink /h %to_path%%%i %%i
)

exit /b
:USAGE
    echo Usage: %~n0 file_extention path\to\make\link\dir\end\with\yenmark\