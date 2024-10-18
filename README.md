# SubtitleEdit-Docker
  Docker container for subtitle conversion, using Subtitle Edit.   

## Introduction
This project is a fork of Wauter's subtitle conversion solution, designed to give users full control over conversion parameters. It utilizes Subtitle Edit's command-line tool to facilitate the conversion between various subtitle formats, including the Screen subtitling system's .pac format. Subtitle Edit is a well-supported, stable application with an active development community.

[Subtitle Edit](https://www.nikse.dk/subtitleedit) 
https://github.com/SubtitleEdit/subtitleedit/

Subtitle Edit is a Windows-based application that includes a command interface for conversion. This fork packages it with Mono in a Docker container, allowing for cross-platform use. Pre-built images are available on Docker Hub for ease of use, eliminating the need for local builds.

_(For formats supported by ffmpeg, consider using it as an alternative: https://trac.ffmpeg.org/wiki/ExtractSubtitles)_

This project is inspired by and builds upon discussions in the community, such as this thread: https://github.com/SubtitleEdit/subtitleedit/issues/3568 Thanks @batatop

## Build

docker buildx build --platform=linux/amd64 -t username/repo:tag --push .

### Convert subtitles

General reference:   
https://www.nikse.dk/subtitleedit/help#commandline

#### Example usage

docker run --rm -v /path/to/Subtitles:/input/ -v /path/to/Output:/output/ GovEy1nw/SubtitleEdit-Docker:latest /convert "/input/file.srt" subrip /profile:NetflixEN /FixCommonErrors /MergeShortLines /BalanceLines /overwrite /outputfolder:"/output/"