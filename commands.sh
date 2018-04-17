#!/bin/sh

# To subroutinize the 'CFF' table, replace "-nS" with "-maxs 30000" in the makeotf command lines.

tfont=cidfont_fs.ps
itfont=cidfont_it_fs.ps
cmap=../UniSourceHanCodeJP-UTF32-H
itcmap=../UniSourceHanCodeJPIt-UTF32-H
fdb=../FontMenuNameDB
vs=../SourceHanCode_JP_sequences.txt
svg=../svg

for wt in ExtraLight Light Normal Regular Medium Bold Heavy
do
	
	nf=SourceHanCodeJP-${wt}.otf
	inf=SourceHanCodeJP-${wt}It.otf
	ttc=SourceHanCodeJP-${wt}.ttc
	
	cd ${wt}
	echo
	pwd
	
	if makeotf -f ${tfont} -mf ${fdb} -ff features -fi cidfontinfo -r -nS -cs 1 -ch $cmap -ci ${vs} -o ${nf} 2>&1 ; then :
	else
		echo Error
		exit
	fi
		
		
	if makeotf -f ${itfont} -mf ${fdb} -ff features.it -fi cidfontinfo.it -r -nS -cs 1 -ch $itcmap -ci ${vs} -o ${inf} 2>&1 ; then :
	else
		echo Error
		exit
	fi 
	
	
	if addSVGtable.py -s $svg ${nf} ; then :
	else
		echo Error
		exit
	fi
		
	if addSVGtable.py -s $svg ${inf} ; then :
	else
		echo Error
		exit
	fi
		
	#if otf2otc -t 'CFF '=0 -o ${ttc} ${nf} ${inf} ; then :
	#else
	#	echo Error
	#	exit
	#fi
	
	cd ../
	
done

