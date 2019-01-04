#!/usr/bin/env bash 

start=$( cd `dirname $0` && pwd	 )
echo "initializing from ${start} "
curl https://raw.githubusercontent.com/reactive-spring-book/publication/master/repositories.txt | while read l ; do
 
 d=$(  echo $l | cut -f5 -d\/ | cut -f1 -d\.  ) 
 echo "Processing $d"  
 dir_to_create=${start}/$d
 

 if [[ -e  $dir_to_create ]] ; then 
 	echo "WARN: ${dir_to_create} aleady exists." 
 	# if you want this to be freshly initialized then check in your work and delete the directory 
 else  	
 	echo "initializing ${dir_to_create}"  
 	git_repo=https://github.com/reactive-spring-book/${d}.git
 	git clone ${git_repo} ${dir_to_create}
 fi
done 

cd ${start}

git clone git@github.com:joshlong/reactive-spring-book.git ${start}/book 
subl ${start} 

