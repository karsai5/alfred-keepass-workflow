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

DEBUG = False
KEYCHAIN_NAME = os.getenv('keychain_name', 'alfred-keepass-pass')

def main(wf):

    print 'HELLO'
    args = wf.args
    print args[0]
    wf.save_password(KEYCHAIN_NAME, args[0])
    sys.exit()

if __name__ == u"__main__":
    print 'hai'
    wf = Workflow3()
    sys.exit(wf.run(main))
