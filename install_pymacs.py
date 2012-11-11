#!/usr/bin/env python

import glob
import os
import os.path
import subprocess

if __name__ == '__main__':
    pymacs_dir = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'Pymacs')
    os.chdir(pymacs_dir)

    # run the preprocessor thing like Pymacs' Makefile does
    command = ['python', 'pppp', '-C', 'ppppconfig.py', ]
    command.extend(glob.glob('*.in'))
    subprocess.call(command)

    # no need to install because PYTHONPATH is set from the Emacs side to find pymacs.py
