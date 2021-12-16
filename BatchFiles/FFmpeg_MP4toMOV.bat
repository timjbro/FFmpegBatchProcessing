@echo off

REM For each .mp4 file in the current directory, create a new file
REM where the video container format has been converted to .mov using the default settings.

for %%F in (*.mp4) DO ffmpeg -i "%%~F" "%%~nF.mov"
