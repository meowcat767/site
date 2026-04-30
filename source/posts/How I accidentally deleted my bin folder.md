---
title: How I accidentally deleted my bin folder
description: regex...
date: 2025-12-16
tags:
- posts
layout: post.njk
---

I accidentally deleted the whole of my bin folder. If you don't know much about Linux, know lots of system files live here,
including bash, DE's, X11 and Wayland, among other things. 

I didn't check the command I was running for syntax errors, and nuked my system. 

## OverlayFS

Overlayed Filesystems is what my Linux distro of choice uses. My etc/ directory had become full, and I needed to install TeX.
The command I ran was "sudo rm -rf /etc/*". I assumed this was the **overlayed FS** and not the main partition, but I was wrong. 
I got hit with "sudo: you do not exist in the passwd database" a few minutes later. cooked.

## What I did wrong
Let's break down the command I ran. "sudo" is to run the rest of the command as root. This is normal, as I need permissions to operate in etc/. 
The next command "rm" with the flags "-rf" removes the passed file, and "-rf" is to force remove. I had passed "/etc/*", "/etc/" being the directory, and "*" being the files (all.)

What I didn't realise is that I had not passed in the **overlayFS**, thus nuking my system.

## Conclusion
Don't wildcard stuff.

