#!/bin/bash

# Define the directory where screenshots will be saved
SCREENSHOT_DIR="$HOME/Pictures/Screenshots"

# Create the directory if it doesn't exist
mkdir -p "$SCREENSHOT_DIR"

# Generate a unique filename for the screenshot
filename="$SCREENSHOT_DIR/screenshot_$(date +%Y%m%d_%H%M%S).png"

# Take the screenshot of a region and save it to the specified location
xfce4-screenshooter -r -c -s "$filename"

# Check if the screenshot was saved successfully
if [ -f "$filename" ]; then
    # Copy the screenshot to the clipboard
    xclip -selection clipboard -t image/png -i "$filename"
else
    echo "Failed to save screenshot."
fi
