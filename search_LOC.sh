#!/bin/bash
NAME[0]="dbcp"
NAME[1]="derby"
NAME[2]="log4j"
NAME[3]="groovy"
NAME[4]="lucene"
NAME[5]="pool"
NAME[6]="Openjdk"

for i in {0..6}
    do
	if [ $i -eq 6 ]
	    then
	     echo "OpenJdk *******************"
	    cd "jdk6"
	     find -name "*.java" | xargs wc -l
	    cd ..
	    cd "jdk7"
	    find -name "*.java" | xargs wc -l
	    cd ..
	else
	   echo ${NAME[i]}*********************	
           cd ${NAME[i]}
	   find -name "*.java" | xargs wc -l
	   cd ..
	fi
    done


