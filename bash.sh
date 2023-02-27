# $1 $2 $3 

v1=$1
v2=$2
v3="dont"

export imgDir=$v1
env| grep imgDir

for  (( i=1; i<=$2; i++ )) # for i in  1 2 3 4 5 6
do 
	echo " $i -----------  "
	DATE=$(date +%Y.%m.%d)
	echo " $DATE -------"

	if [ "$3" = "do"  ];then
		
		for file in $1/*
		do
			echo " $file "
			python3 resize.py "$file" > $file-$DATE.out
		done

	fi
	
done 
