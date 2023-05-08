#!/usr/bin/bash

# Find the Path to Bash and save it to variable path_to_bash 
path_to_bash=($BASH)

# Print a message with the path to the screen
echo "Path to Bash: "$path_to_bash
# Create Shebang line and save it to a variable 
shebang="#!$path_to_bash"
# print shebang line to the screen
echo "Shebang for Bash: $shebang"
