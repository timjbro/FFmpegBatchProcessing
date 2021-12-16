@echo off

REM For each .mp4 and .mov file in the current directory, create a new file
REM with no audio, subtitles or metadata (only keep the video).

for %%F in (*.mp4 *.mov) DO ffmpeg -i "%%~F" -vcodec copy -an "%%~nF (no audio)%%~xF"
