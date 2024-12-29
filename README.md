# Drew's Nixvim config

## About

This is the neovim config I use daily. It includes several plugins which I consider essential to a good editing experience.

## Dependencies

I use [NixVim](https://github.com/nix-community/nixvim) to help manage dependencies and installation. This (in theory) means that you do *not* have to worry about what you need to install in order to properly use every component of this configuration to its fullest. However, I have a mild case of skill issue and haven't managed to figure out how to install certain required programs which are needed for some plugins to work properly.

Currently, you need to manually install the following programs:

- ripgrep (for Telescope's Live Grep)

## Installation

Because I'm using [NixVim](https://github.com/nix-community/nixvim), you need to have the [Nix package manager](https://nixos.org/) installed on your system. There are installation instructions on their website for all UNIX-like systems, including Linux and macOS.

Additionally, you must have [flakes](https://wiki.nixos.org/wiki/Flakes) enabled. See the linked guide for details on how to do that for your system / installation.

### Trying the config 

To try my Neovim config without installing it, simply run: 
```bash
nix run github:DrewDalmedo/nvimrc# 
```
This will load you into an empty buffer.

### Installing the config

There will be different installation steps required depending on whether you're running NixOS or if you're running Nix by itself.

This section will be completed later.
