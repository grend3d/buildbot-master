#!/bin/sh

python3 -m venv sandbox

. sandbox/bin/activate
pip install --upgrade pip
pip install -r requirements.txt

buildbot create-master master
cp ./master.cfg master

buildbot start master
