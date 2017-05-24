#!/usr/bin/env python
import subprocess
import os #this is used to concatenate file path
import subprocess #to envoke the speedtest-cli command
import time #get the timestamp for the file

timeStamp=time.strftime("%m-%d-%Y")

baseDir="/share/data/networkData/"
fileName = "speedTest" + timeStamp + ".json"
filePath = baseDir + fileName

if not os.path.exists(baseDir):
	print "creating missing directory to store data"
	os.makedirs(baseDir)
	print "directory created"
	
print "Getting speed test data"

with open(filePath, "a") as output:
	subprocess.call([ "speedtest-cli", "--json", "--share"], stdout=output);
	output.write(",")

print "Data gathering complete"

