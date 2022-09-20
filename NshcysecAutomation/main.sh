
#!/bin/bash

echo "    _   _______ __  __________  _______ ____________   __________  ____  __ 
   / | / / ___// / / / ____/\ \/ / ___// ____/ ____/  /_  __/ __ \/ __ \/ / 
  /  |/ /\__ \/ /_/ / /      \  /\__ \/ __/ / /        / / / / / / / / / /  
 / /|  /___/ / __  / /___    / /___/ / /___/ /___     / / / /_/ / /_/ / /___
/_/ |_//____/_/ /_/\____/   /_//____/_____/\____/    /_/  \____/\____/_____/
                                                                            "
echo "                                        -A tool by Nirankar Shrivastav"
#Author : Nirankar Shrivastav
#copyright (c) nshcysec.com
#Credits
#nmap :https://nmap.org/nmap_thanksto.html
#Nikto: https://www.kali.org/tools/nikto/
#amass : https://github.com/OWASP/Amass/blob/master/doc/tutorial.md
#Script Follow here :

echo "What Function You want to Perform : "

echo "1. Network Scan"
echo "2. Vulnerability Scan"
echo "3. DNS Scan"
echo "4. Exit From Menu"
echo -n "Enter Your Choice [1-4] : "


while :
do

read choice

case $choice in 
  #Pattern 1
  1)  echo " You have Selected Network scan Enter Url"
      read url
      nmap -sV -A $url;;


  #Pattern 2 

  2) echo " You have Selected vulnerability scan Enter Url"
     read niktos
     nikto -host $niktos;;


  #Pattern 3


  3)  echo " You have Selected dns scan Enter Url"
      read amis
      amass enum -d $amis ;;


  #Pattern 4


  4) echo "Quitting"
     exit;;

  *) echo "invalid option";;


esac
  echo -n "Enter Your Choice [1-4] :"
done

