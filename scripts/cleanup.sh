#!/bin/bash
echo Removing log files 
echo Size before $(du -sh ..)
find /home/jonas/docker/ -name "*.log*" -type f -delete
echo Size after $(du -sh ..)