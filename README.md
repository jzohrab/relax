# Purpose

A simple relaxation prompter that periodically plays reminder messages to prompt me to relax while practicing.

Sample phrases:

* Relax your shouders
* Release any neck tension
* Smoothly, easily
* Fret lightly with less energy

etc.

# Usage

```
ruby main.rb <folder> <seconds between each phrase>
```

For example:

```
ruby main.rb mp3s 45
```

When done, just kill the program.

# Notes

The mp3s provided in the mp3s folder were generated from https://ttsmp3.com/ using the "US English/Salli" voice.

You can either replace the existing the mp3 files, or create a new folder with your own files for different purposes.

This code is only tested on, and only works on, Mac.  It should be easy to port to a Windows machine, but I don't have one to test with.