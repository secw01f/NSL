#!/bin/bash

ls /usr/share/nmap/scripts/*$1* | awk 'BEGIN { FS = "[/.]" }{print $6}'
