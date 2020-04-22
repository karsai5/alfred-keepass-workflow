#!/usr/bin/python

import subprocess
from os.path import expanduser
import sys
import base64
import pexpect
import re
import os
import json
from workflow import Workflow3, ICON_WEB, web
from workflow import Variables

DEBUG = True
DBLOCATION = os.getenv('dblocation', 'default_value')
KEYCHAIN_NAME = os.getenv('keychain_name', 'alfred-keepass-pass')
KEYFILE_LOCATION = os.getenv('keyfile', '')


def main(wf):

    args = wf.args
    kpcliCommand = "./kpcli/bin/kpcli --kdb \"%s\"" % DBLOCATION
    if KEYFILE_LOCATION is not '':
        kpcliCommand =  "%s --key \"%s\"" % (kpcliCommand, KEYFILE_LOCATION)
    try:
        password = wf.get_password(KEYCHAIN_NAME)
    except Exception as e:
        wf.save_password(KEYCHAIN_NAME, 'password')
        wf.add_item("Password not found.",
                    "Update your password with \"pass-set-password <masterpassword>\"")
        wf.send_feedback()
        sys.exit()

    process = pexpect.spawn(kpcliCommand)

    if DEBUG:
        process.logfile = open("/tmp/keepass_alfred_workflow.log", "w")

    result = process.expect(
        ["Please provide the master password", "the file must exist", pexpect.EOF])
    if result == 0:
        process.sendline(password)
    else:
        wf.add_item("Can't find your database.",
                    "Make sure to set it with \"pass-set-dblocation <dblocation>\"")
        wf.send_feedback()
        sys.exit()

    result = process.expect(["kpcli:/>", "invalid", pexpect.EOF])

    if result == 0:
        process.sendline("find " + args[0].replace(" ", "\ "))
    else:
        wf.add_item("Couldn't open the database.",
                    "Make sure you have set your password with \"pass-set-password <passowrd>\".")
        wf.send_feedback()
        sys.exit()

    index = process.expect(["matches found", "No matches"])

    # matches found
    if index == 0:
        itemNames = []
        process.sendline("n")
        process.expect("kpcli:/>")
        process.sendline("ls /_found/")
        process.expect("kpcli:/>")
        for line in process.before.split("\n"):
            if re.match("[0-9]\.", line):
                itemNumber = line.split('.')[0]
                itemNames.append(itemNumber)
        for name in itemNames:
            process.sendline("show %s" % name)
            process.expect("kpcli:/>")
            addItemDetails(process)

    # no matches found...
    elif index == 1:
        wf.add_item("No results found...")

    wf.send_feedback()


def addSingleItem(process):
    process.sendline("y")
    process.expect("kpcli:/>")
    addItemDetails(process)


def addItemDetails(process):
    name = ""
    path = ""
    username = ""
    argument = ""
    password = ""
    for line in process.before.split("\n"):
        if "Title" in line:
            name = line.split(":")[1].strip()
        if "Path" in line:
            path = ":".join(line.split(":")[1:]).strip()
        if "Uname" in line:
            username = ":".join(line.split(":")[1:]).strip()
    argument = path + name

    process.sendline("show -f " + argument.replace(" ", "\ "))

    process.expect("kpcli:/>")

    for line in process.before.split("\n"):
        if "Pass" in line:
            password = ":".join(line.split(":")[1:]).strip()

    wf.add_item(title=name, subtitle="Username: " + username,
                copytext=password, largetext=password, arg=password, valid=True)


if __name__ == u"__main__":
    wf = Workflow3()
    sys.exit(wf.run(main))
