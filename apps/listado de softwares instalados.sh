#!/bin/sh
#
# Nombre del paquete 		:	CFBundleName
# Ejecutable			:	CFBundleExecutable
# Versión del paquete		:	CFBundleShortVersionString
# Fabricante 			:	NSHumanReadableCopyright
# Fabricante (otros)		:	CFBundleGetInfoString


for i in /Applications/*app
	do
	app=$(/usr/libexec/plistbuddy -c Print:CFBundleName: "$i"/Contents/info.plist)
    	version=$(/usr/libexec/plistbuddy -c Print:CFBundleShortVersionString: "$i"/Contents/info.plist)
    	vendor=$(/usr/libexec/plistbuddy -c Print:NSHumanReadableCopyright: "$i"/Contents/info.plist)
    	echo "$app","$version","$vendor" >> ~/Desktop/listado\ apps.csv
    done
    
for i in /Applications/*/*app
	do
	app=$(/usr/libexec/plistbuddy -c Print:CFBundleName: "$i"/Contents/info.plist)
    	version=$(/usr/libexec/plistbuddy -c Print:CFBundleShortVersionString: "$i"/Contents/info.plist)
    	vendor=$(/usr/libexec/plistbuddy -c Print:NSHumanReadableCopyright: "$i"/Contents/info.plist)
    	echo "$app","$version","$vendor" >> ~/Desktop/listado\ apps.csv
    done
    
for i in /Applications/*/*/*app
	do
	app=$(/usr/libexec/plistbuddy -c Print:CFBundleName: "$i"/Contents/info.plist)
    	version=$(/usr/libexec/plistbuddy -c Print:CFBundleShortVersionString: "$i"/Contents/info.plist)
    	vendor=$(/usr/libexec/plistbuddy -c Print:NSHumanReadableCopyright: "$i"/Contents/info.plist)
    	echo "$app","$version","$vendor" >> ~/Desktop/listado\ apps.csv
    done
    
