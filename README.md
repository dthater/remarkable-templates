# reMarkable Custom Templates

Welcome. Feel free to use these custom templates for your reMarkable 1 paper tablet.


## Prerequisites

To export PNG from SVG use [Inkscape](https://inkscape.org).
To rotate landscape (LS) files use [Image Magick](https://imagemagick.org/).


## Build PNGs

Use build.bat to convert SVGs to PNGs by using Inkscape.

Therefore start the Windows command shell `cmd.exe`.

First, set the `set INKSCAPE_HOME=<path to Inkscape executable>`. Example:

    set INKSCAPE_HOME=C:\workspace\tools\inkscape-1.1\inkscape\bin\
    
Second, set the Image Magick home folder `set IMAGEMAGICK_HOME=<path to ImageMagick executables>`. Example:

    set IMAGEMAGICK_HOME=C:\workspace\tools\ImageMagick-7

Then run `build.bat` from the project's root folder.

Ensure both tools are properly installed and available system wide from Windows' command shell (cmd).


## Installation instructions

! Be careful when changing system files. You can break your system. Use backups.

To install a custom template on your device you'll need to browse its files. 
To find out how to do that see [reMarkable Wiki](https://remarkablewiki.com/tech/ssh).

To access to the files of your device, use a SFTP tool, like WinSCP, to enter the file system of your reMarkable. 

Please ensure your reMarkable is unlocked while the following procedure.

Assuming you use WinSCP or similar two-sided remote browser:

- Connect to the reMarkables IP address.
- Navigate to `/usr/share/remarkable/templates` on the remote windows side.
- Navigate to the project's folder on the other windows side. Choose the right folder of the templates you want to install.
- Backup the `templates.json` file on your desktop. (In WinSCP you can easily use drag & drop the remote file on your local desktop.)
- Copy all PNG files on your reMarkable into the remote folder.
- Open the project's `template.json`.
- Copy the JSON snippet into your clipboard.
- Open the remote `templates.json` file.
- Scroll down to the end of the file.
- Place a comma (,) the second last cruly bracked (not the last one) and press enter to get an new line.
- Paste the JSON snippet copied early right at theplace of the new line.
- Save your changed and quit the editor to be sure, the file was upload onto your reMarkable.
- Repeat as needed with other templates. 
- After all files are in plcee, reboot your reMarkable.

