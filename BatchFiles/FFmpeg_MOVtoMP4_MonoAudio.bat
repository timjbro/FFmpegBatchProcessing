@echo off

REM For each .mov file in the current directory, create a new file
REM where the video container format has been converted to .mp4,
REM the video codec has been converted to h264,
REM and the audio has been converted to mono, keeping only the right channel from the original.

for %%F in (*.mov) DO ffmpeg -i "%%~F" -vcodec h264 -acodec mp2 -af "pan=mono|c0=c1" "%%~nF.mp4"
