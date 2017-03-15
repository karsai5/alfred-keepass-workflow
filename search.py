#!/usr/bin/python

import subprocess
from os.path import expanduser
import sys
import base64
import pexpect
import re
import json
from workflow import Workflow, ICON_WEB, web

DEBUG = True
DBLOCATION = "/Users/lkarsai/Documents/thoughtworks.kdbx"

def main(wf):

    args = wf.args
    kpcliCommand= "/usr/local/bin/kpcli --kdb " + DBLOCATION
    try:
        password = wf.get_password('alfred-keepass-pass')
    except Exception as e:
        wf.save_password('alfred-keepass-pass', 'password') 
        wf.add_item("Password not found")
        wf.add_item("Open up keychain")
        wf.add_item("Search for alfred-keepass-pass")
        wf.add_item("Update your password")
        wf.send_feedback()

    process = pexpect.spawn(kpcliCommand)

    if DEBUG: 
        process.logfile = open("/tmp/mylog", "w")

    result = process.expect(["Please provide the master password", "the file must exist"])
    if result == 0:
        process.sendline(password)
    else: 
        wf.add_item("Can't find database, check config.")
        wf.send_feedback()

    result = process.expect(["kpcli:/>", "invalid"])
    if result == 0:
        process.sendline("find " + args[0].replace(" ", "\ "))
    else:
        wf.add_item("Couldn't access database")
        wf.add_item("Check config and password")
        wf.send_feedback()

    index = process.expect(["matches found", "No matches"])

    if index == 0:
        itemNames = []
        process.sendline("n")
        process.expect("kpcli:/>")
        process.sendline("ls /_found/")
        process.expect("kpcli:/>")
        for line in process.before.split("\n"):
            if re.match("[0-9]\.", line):
                name = ".".join(line.split(".")[1:]).strip()
                itemNames.append(name)
        for name in itemNames:
            process.sendline("show /_found/" + name.replace(" ", "\ "))
            process.expect("kpcli:/>")
            addItemDetails(process)

    elif index == 1:
        wf.add_item("No results found...")

    wf.send_feedback()

def addSingleItem(process):
        process.sendline("y")
        process.expect("kpcli:/>")
        addItemDetails(process)

def addItemDetails(process):
    name= ""
    path= ""
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

    wf.add_item(title=name, subtitle="Username: " + username, copytext=password, largetext=password, arg = password, valid=True)

if __name__ == u"__main__":
    wf = Workflow()
    sys.exit(wf.run(main))
