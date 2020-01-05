<p align="center">
  <img src="https://img.shields.io/badge/BlocklandCEF-v0.1.2-orange.svg">
  <img src="https://img.shields.io/github/release/paperworx/BlocklandCEF-Installer.svg">
  <img src="https://img.shields.io/github/downloads/paperworx/BlocklandCEF-Installer/total.svg">
</p>

# BlocklandCEF-Installer

[BlocklandCEF](https://github.com/paperworx/BlocklandCEF) is an implementation of Chromium Embedded Framework for Blockland that allows you to load webpages/videos in-game.

This is an installer that will attempt to install BlocklandCEF for a user automatically, while ensuring the user has all the dependencies required to run it and is running a compatible operating system.

# Download

See Releases page and look for **Latest Release**.

# Compiling

The following stuff is required to compile the source yourself:

- NSIS v3.05: https://sourceforge.net/projects/nsis/files/NSIS%203/3.05
- BlocklandCEF v0.1.2: https://github.com/paperworx/BlocklandCEF/releases/tag/v0.1.2-r2001

Place the contents of BlocklandCEF v0.1.2 into `instfiles` then use NSIS v3.05 to compile `main.nsi`.