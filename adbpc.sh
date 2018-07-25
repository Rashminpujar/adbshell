#!/bin/bash

echo "device info"
echo "version :"
adb shell getprop ro.build.version.release
cat /proc/meminfo | grep MemTotal
adb shell getprop | grep manufacturer
adb shell getprop| grep density


#step1
echo "installing the app";
for file in *.apk;
do 
adb install $file;
done 
23456
#step 2
echo "getting the package name of the app"

package=$(aapt dump badging *.apk | awk -v FS="'" '/package: name=/{print $2}')

adb shell input keyevent KEYCODE_APP_SWITCH 
adb shell input keyevent 20
adb shell input keyevent 67
adb shell input keyevent DEL

#STEP3
echo "the appliction is going to start"
adb shell monkey -p $package 1
sleep 2

#step4
echo "click on Accept button"

adb shell input keyevent 66
sleep 2
echo "click on log-in"

adb shell input keyevent 66

adb shell input keyevent 66
sleep 2

echo "enter USERNUMBER "
read no 
adb shell input text $no 
adb shell input keyevent 66


echo "enter PIN"
read pin
adb shell input text $pin
#shell input keyevent 66
sleep 2

adb shell input keyevent 22

sleep 2
echo "the app is succefully logging"
adb shell input keyevent 66

echo "enter From and To"
adb shell input keyevent 66
#adb shell input tap 210 300
adb shell input keyevent 22
adb shell input tap 560 230

#adb shell input swipe 200 200 100 500 200

adb shell input keyevent 66
#adb shell input tap 315 955
adb shell input keyevent 20
#adb shell input keyevent 66

adb shell input keyevent 20
#adb shell input keyevent 66

adb shell input keyevent 20
#adb shell input keyevent 66

adb shell input keyevent 20
#adb shell input keyevent 66

adb shell input keyevent 20
adb shell input keyevent 66








