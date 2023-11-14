#!/bin/bash

sudo apt install -y playerctl

git clone https://github.com/noctuid/zscroll
cd zscroll
sudo python3 setup.py install
