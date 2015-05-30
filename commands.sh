#!/bin/sh

# To subroutinize the 'CFF' table, replace "-nS" with "-maxs 30000" in the makeotf command lines.

tfont=cidfont.ps

tcd=`pwd`

cmap=../UniSourceHanSansJP-UTF32-H
fdb=../FontMenuNameDB
vs=../SourceHanSans_JP_sequences.txt

for wt in ExtraLight Light Normal Regular Medium Bold Heavy
do
	
	nf=SourceHanCodeJP-${wt}.otf
	
	cd ${wt}
	echo
	pwd
	
	if makeotf -f ${tfont} -mf ${fdb} -r -nS -cs 1 -ch $cmap -ci ${vs} -o ${nf} 2>&1 ; then :
	else
		echo Error
		exit
	fi
	
	cd ${tcd}
	

done

###
### Plesase comment out, if you don't want to make OpenType Collection font.
###

otf2otc -o SourceHanCodeJP.ttc ExtraLight/SourceHanCodeJP-ExtraLight.otf Light/SourceHanCodeJP-Light.otf Normal/SourceHanCodeJP-Normal.otf Regular/SourceHanCodeJP-Regular.otf Medium/SourceHanCodeJP-Medium.otf Bold/SourceHanCodeJP-Bold.otf Heavy/SourceHanCodeJP-Heavy.otf
