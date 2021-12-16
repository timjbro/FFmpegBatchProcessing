@echo off

REM For each .mov file in the current directory, create a new file
REM where the video container format has been converted to .mp4 using the default settings.

for %%F in (*.mov) DO ffmpeg -i "%%~F" "%%~nF.mp4"
