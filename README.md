# shadventure

This repo is a basic text adventure written purely in shell scripts. It is designed to run on any Unix-like OS using your built-in shell. 

A simple Windows installer has also been included, which will run it through a temporary Git Bash installation to simulate a Unix shell enviroment.

You are welcome to use this as a template for your own game, although please do credit me and/or this repo.

## INSTALLATION

### Linux

The game is optimised for Linux, and it is most heavily tested there.
To run, simply clone the repo and run `start.sh`. Depending on your distro, you may have to give it executable permissions, which can be done easily in your file properties, or with `chmod +x start.sh`.

```bash
git clone https://github.com/Dispatch9001/shadventure.git
cd shadventure
./start.sh
```

### macOS

This script has not been tested on macOS, but it *should* work out of the box. The steps would be identical to Linux.

### Windows

There are two ways to run it on Windows.

1. The automatic install script
Simply copy-paste and run this oneliner in the the Command Prompt or Powershell. It is tested on Windows 10+, but should still work all the way back to 7.
`powershell -C "iwr https://raw.githubusercontent.com/Dispatch9001/shadventure/master/win/install.bat -O install.bat; .\install.bat"`

2. Through WSL
The Linux install instructions work fine through WSL if you already have it installed.

## TODO

### Top Priority

- [ ] [Story](./story.md)
  - [ ] Basic premise
  - [ ] Rooms
  - [ ] Endings
- [ ] Multimedia elements
  - [ ] Map
    - [ ] Logic
    - [ ] Art
  - [ ] Choose 2nd recurring element
- [x] Basic coding

### Medium Priority

- [x] Windows Installer

### Low Priority

* [ ] Colourise output
* [ ] Other stylisation
* [ ] Add more items to the todo list
