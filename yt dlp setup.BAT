@echo off
mkdir C:\ffmpeg
start https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp.exe
start https://github.com/yt-dlp/FFmpeg-Builds/releases/download/latest/ffmpeg-master-latest-win64-gpl.zip

cd downloads
move /y yt-dlp.exe \videos
move /y ffmpeg-master-latest-win64-gpl.zip c:\ffmpeg