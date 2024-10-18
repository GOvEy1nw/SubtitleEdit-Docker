#!/bin/bash

# Print the received arguments for debugging
echo Your container args are: "$@"

# Use exec to replace the shell with the command, preserving argument separation
xvfb-run -a mono /opt/subtitleEdit/SubtitleEdit.exe "$@"