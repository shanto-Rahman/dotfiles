#!/bin/bash
NAME[0]="dbcp"
NAME[1]="derby"
NAME[2]="log4j"
NAME[3]="groovy"
NAME[4]="lucene"
NAME[5]="pool"
NAME[6]="Openjdk"

pwd

for i in {0..6}
    do   
	if [ $i -eq 6 ]
	then
	    cd "jdk6"
	    find -name "*.sh" | wc -l
	    cd ..
	    cd "jdk7"
	    find -name "*.sh" | wc -l
       else
	cd ${NAME[i]}
	echo ${NAME[i]}
	find -name "*.sh" | wc -l
	cd ..
      fi
    done

cd "jdk7"
x=`find -name *.sh | wc -l`
echo X: $x
cd ..
cd "jdk6"
y=`find -name *.sh | wc -l`
echo Y: $y
#sum=$(($x + $y))
#echo "OpenJDK =" +   $sum
