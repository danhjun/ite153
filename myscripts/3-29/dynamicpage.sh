#! /usr/bin/bash

read -p "Please enter color for background -> " backcolor
read -p "Please enter color for text-> " txtcolor
read -p "Please enter your name-> " name
read -p "Please enter the temperature-> " temp

if [ $temp -ge 70 ]
then
	msg="Its warm out, wear a t-shirt"
else
	msg="brrr, its cold. Grab a coat"
fi

cat <<-_EOF_

<html>

	<head>
		<title>ITE153 Operating Systems</title>
	</head>

	<body bgcolor="$backcolor"> 
   	<font color="$txtcolor">
 
	<h1>Hello $name, Welcome to my webpage</h1>
	
	<h3>The temperature is $temp degrees</h3>
	<h3>$msg</h3>

   	</font> 
	</body>
	
</html>
_EOF_
