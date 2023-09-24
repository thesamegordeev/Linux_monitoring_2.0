#!/bin/bash

datemask="_"$(date +"%d%m%y")

find / -path "*$datemask*" -delete 2>/dev/null
find / -name "*$datemask*" -delete 2>/dev/null