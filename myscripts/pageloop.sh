#! /usr/bin/bash


cat <<-_EOF_

<html>
<head>

	<title></title>
</head>

<body bgcolor="mediumseagreen">

Hello, this is a test 
_EOF_

echo "<div>The value of startnum is $1</div>"
echo "<div>The value of endnum is $2</div>"

let count=$1

while [ $count -le $2 ]
do

	if [ $(( $count % 2 )) -eq 0 ]
	then
		echo "<div><font color="burnt umber">$count</font></div>"
	else
		echo "<div><font color="brass">$count</font></div>"
	fi

	let count=$(( $count + 1 ))

done

cat <<-_EOF_
</body>

</html>
_EOF_
