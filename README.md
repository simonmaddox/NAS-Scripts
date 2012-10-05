# NAS Scripts

The out of the box experience for working with a NAS on OS X isn't great.

This repo contains a collection of scripts I'm using to make everything
a little more automated.

## Mount Network Drives.scpt

If you add network drives to Login Items directly, you'll get an error
if you're not connected to your home network.

This AppleScript checks your current network's SSID before trying to
mount the drives. Simple.