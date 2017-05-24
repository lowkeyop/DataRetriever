#!/usr/bin/env python
import imp
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("-m","--moduleName", help="name of one module to check existence. adds it to a list",
                    dest="modList", action="append", type=str)

args = parser.parse_args()
listMods = args.modList


print "paramaeter args",args._get_kwargs()

if listMods is None:
        print "parameter 'moduleList' was not provided"
else:
        print "module list value(s) are: ", listMods
        for modName in listMods:                
                try:
                        imp.find_module(modName)
                        found = True
                except ImportError:
                        found = False
                print "Module", modName, "was", "found" if found==True else "not found"
                print "attempting to import", modName,"now!"
                __import__(modName)


