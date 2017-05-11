# KeePass-Alfred-Workflow
Alfred workflow for accessing Keepass items.

## Usage

1. Search for passwords in your keepass db by typing "pass <search-term>"
2. Crl+c will copy the password. Hitting enter will type the password wherever your cursor is.

## Installation

1. Grab the latest .alfredworkflowfile from the [releases page](https://github.com/karsai5/KeePass-Alfred-Workflow/releases).
2. Install it by dragging and drop it into the workflow tab of Alfred's preferences.
3. Set the db location by typing "pass-set-dblocation <database location>" into Alfred.
![Set database location](https://github.com/karsai5/KeePass-Alfred-Workflow/blob/images/set-db.png?raw=true)
4. Set your master password by typing pass-set-password <password> into Alfred.
![Set master password](https://github.com/karsai5/KeePass-Alfred-Workflow/blob/images/set-password.png?raw=true)

## Lots of thanks!
This project wouldn't be possible without the following:

- [kpcli by Lester Hightower](http://kpcli.sourceforge.net/): A command line application for accessing keepass database files.
- [Alfred-workflow](https://github.com/deanishe/alfred-workflow): A helper library in Python for authors of workflows for Alfred 2 and 3.

## Security note
Your password is currently stored in the osx keychain. In the future I'm looking at also having the option to have it prompt you for it everytime to make things a bit more secure. 
