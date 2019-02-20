@set ROOT=%~dp0
@set BUILD=%ROOT%build-vscode
@set STAGE=%BUILD%\stage
@IF NOT EXIST %STAGE% mkdir %STAGE%
@copy %BUILD%\IronGloveBackend\IronGlove.exe %STAGE% > NUL
@copy %BUILD%\IronGloveBackend\lua51.dll %STAGE% > NUL
@copy %ROOT%\IronGloveBackend\systems.lua %STAGE% > NUL
@if "%~1"=="PePe" (
    @%STAGE%\IronGlove
) else (
    call <nul %0 PePe
)
