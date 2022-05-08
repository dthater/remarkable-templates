@echo off
title Convert reMarkable SVG templates to PNG

if not defined INKSCAPE_HOME (
  echo %%INKSCAPE_HOME%% is not defined. Please do set INKSCAPE_HOME=[path to Inkscape]
  pause
  goto :QUIT
)

if not defined IMAGEMAGICK_HOME (
  echo %%IMAGEMAGICK_HOME%% is not defined. Please do set IMAGEMAGICK_HOME=[path to ImageMagick]
  pause
  goto :QUIT
)


for /R %%f in ("LS *.svg") do call :process "%%f" 90
for /R %%f in ("P *.svg") do call :process "%%f"
goto :QUIT


:process
set inputfile=%1
echo Converting %inputfile% to PNG.

%INKSCAPE_HOME%\inkscape.exe --export-type="png" %inputfile%
if not %errorlevel% == 0 goto :ERROR

if "%2" == "90" (
  set outputfile=%inputfile:svg=png%
  %IMAGEMAGICK_HOME%\convert %outputfile% -rotate -90 %outputfile%
  if not %errorlevel% == 0 goto :ERROR
)

goto :QUIT

:ERROR

echo Some error occurred. Aborted.

:QUIT