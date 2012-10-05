# NAS Scripts

The out of the box experience for working with a NAS on OS X isn't great.

This repo contains a collection of scripts I'm using to make everything
a little more automated.

## Mount Network Drives.scpt

If you add network drives to Login Items directly, you'll get an error
if you're not connected to your home network.

This AppleScript checks your current network's SSID before trying to
mount the drives. Simple.

## File Syncing

I often download files on my laptop, but want them to end up in the
Downloads directory on my NAS. I've created a folder action (Sync Downloads Folder Action.png)
which handles syncing when the drive is available.

But when it's not available (ie. I'm away from home) the Mount Network Drives
script will rsync the directories when I'm back home.

All of this happens automatically, in the background.