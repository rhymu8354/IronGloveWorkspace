@set ROOT=%~dp0
@set BUILD=%ROOT%build-vscode
@set STAGE=%BUILD%\stage
@IF NOT EXIST %STAGE% mkdir %STAGE%
@copy %ROOT%\IronGloveBackend\systems.lua %STAGE% > NUL
