
# Music Player Script with desktop entry

This is a simple shell script for playing music files continuously using `mpg123` in a Linux environment with desktop entry.

## Prerequisites

- Install `mpg123` on your system.

  ```bash
  sudo apt-get install mpg123

Usage

    Clone the repository:

    bash

git clone https://github.com/your-username/music-player-script.git

Change into the project directory:

bash

cd music-player-script

Make the script executable:

bash

chmod +x play_music.sh

Run the script:

bash

    ./play_music.sh

The script will play music files in the specified directory continuously.
Desktop Entry

To easily run the script from your desktop environment:

    Make sure the script is executable:

    bash

chmod +x play_music.sh

Create a desktop entry by opening a text editor and creating a new file:

bash

nano ~/.local/share/applications/play-music.desktop

Paste the following content into the file, adjusting the Exec line:

ini

[Desktop Entry]
Name=Play Music
Comment=Play music continuously
Exec=/path/to/your/script/play_music.sh
Icon=audio-x-generic
Terminal=true
Type=Application
Categories=Audio;Music;

Replace "/path/to/your/script/play_music.sh" with the actual path to your script.

Save the file and make it executable:

bash

    chmod +x ~/.local/share/applications/play-music.desktop

Now, you should find the "Play Music" entry in your application menu or launcher. Clicking on it will execute the script in a terminal, and your music will start playing.
Stopping the Script

    To stop the script, use Ctrl+C in the terminal where the script is running.

    Alternatively, find the script's process using ps or pgrep and use the kill command to stop it:

    bash

pkill -f play_music.sh

Additionally, if needed, use the following commands to stop related processes:

bash

    pkill -f mpg123

Configuration

    Update the music_dir variable in the script with the path to your music directory.
    Adjust the *.mp3 pattern in the script to match the actual file type(s) of your music files.

Notes

    This script uses an infinite loop to play music continuously.
    Make sure to check and install any additional dependencies if needed.

License

This project is licensed under the GPL License - see the LICENSE file for details.

csharp


This section provides instructions for stopping the script and related processes using `pkill`. Adjust it as needed based on your specific requirements.


