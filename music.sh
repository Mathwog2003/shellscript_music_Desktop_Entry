# #!/bin/bash

# # Specify the directory containing your music files
# music_dir="/home/anam/Music"

# # Check if mpg123 is installed
# if ! command -v mpg123 &> /dev/null; then
#     echo "mpg123 is not installed. Please install it first."
#     exit 1
# fi

# # Change to the music directory
# cd "$music_dir" || exit

# # Infinite loop to play music continuously
# while true; do
#     # Get a random file from the music directory and play it
#     file=$(ls | shuf -n 1)
#     mpg123 "$file"
# done


#!/bin/bash

# Specify the directory containing your music files
music_dir="/home/anam/Music"

# Check if mpg123 is installed
if ! command -v mpg123 &> /dev/null; then
    echo "mpg123 is not installed. Please install it first."
    exit 1
fi

# Change to the music directory
cd "$music_dir" || exit

# Get a list of all music files in the directory
music_files=(*.mp3)  # Modify the pattern based on your file types

# Check if there are any music files
if [ ${#music_files[@]} -eq 0 ]; then
    echo "No music files found in the directory."
    exit 1
fi

# Infinite loop to play music files continuously
while true; do
    # Iterate over each music file and play it
    for file in "${music_files[@]}"; do
        mpg123 "$file"
    done
done

