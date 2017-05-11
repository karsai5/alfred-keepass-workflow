# KeePass-Alfred-Workflow
Alfred workflow for accessing Keepass items.

## Usage

1. Search for passwords in your keepass db by typing "pass <search phrase>"
2. Crl+c will copy the password. Hitting enter will type the password wherever your cursor is.

## Installation

1. Grab the latest .alfredworkflowfile from the [releases page](https://github.com/karsai5/KeePass-Alfred-Workflow/releases).
2. Drag and drop it into the workflow tab of Alfred's preferences to install it.
3. Click on the workflow variables button in the top right.
4. Update the dblocation variable with the location of your keepass db.
5. Try searching for a password "pass thingIWantPasswordFor"
6. It'll complain about not having a password. Open up Keychain (/Applications/Utilities/Keychain Access) and search for "alfred-keepass-pass".
7. Open that entry and update it with the master password for your keepass db.
8. Try searching for a password again, it'll ask for access to your keychain, click always allow.
