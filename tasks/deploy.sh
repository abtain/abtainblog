#!/usr/bin/env bash
jekyll _site && rsync -avz --delete _site/ 192.168.1.11:/data/abtain.org
