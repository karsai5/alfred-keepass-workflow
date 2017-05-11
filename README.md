# KeePass-Alfred-Workflow
Alfred workflow for accessing Keepass items.

## Usage

1. Search for passwords in your keepass db by typing "pass <search phrase>"
2. Crl+c will copy the password. Hitting enter will type the password wherever your cursor is.

## Installation

1. Grab the latest .alfredworkflowfile from the [releases page](https://github.com/karsai5/KeePass-Alfred-Workflow/releases).
2. Drag and drop it into the workflow tab of Alfred's preferences to install it.
3. Click on the workflow variables button in the top right.
![variables button](https://github.com/karsai5/KeePass-Alfred-Workflow/blob/images/variables-button.gif?raw=true)
4. Update the dblocation variable with the location of your keepass db.
![dblocation field](https://github.com/karsai5/KeePass-Alfred-Workflow/blob/images/variables-to-update.png?raw=true)
5. Try searching for a password "pass thingIWantPasswordFor"
6. It'll complain about not having a password. Open up Keychain (/Applications/Utilities/Keychain Access) and search for "alfred-keepass-pass".
7. Open that entry and update it with the master password for your keepass db.
8. Try searching for a password again, it'll ask for access to your keychain, click always allow.

## Lots of thanks!
This project wouldn't be possible without the following:

- [kpcli by Lester Hightower](http://kpcli.sourceforge.net/): A command line application for accessing keepass database files.
- [Alfred-workflow](https://github.com/deanishe/alfred-workflow): A helper library in Python for authors of workflows for Alfred 2 and 3.
