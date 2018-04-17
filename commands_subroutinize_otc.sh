#!/bin/sh

for wt in ExtraLight Light Normal Regular Medium Bold Heavy
do
	
	nf=SourceHanCodeJP-${wt}.otf
	inf=SourceHanCodeJP-${wt}It.otf
	
	cff=SourceHanCodeJP-${wt}.cff
	
	tmpf=${nf}.tmp
	tmpif=${inf}.tmp 
	
	cd ${wt}
	pwd
	
	##
	## make CFF subroutinize
	##
	
	if tx -cff +S +d -no_futile -a ${nf} 2>&1 ; then :
	else
		echo get CFF
	fi
	
	
	if sfntedit -a CFF=${cff} ${nf} 2>&1 ; then :
	else
		echo sfntedit -a error
	fi
	
	if sfntedit -a CFF=${cff} ${inf} 2>&1 ; then :
	else
		echo sfntedit -a error
	fi
	
	##
	## copy the original fonts to *.tmp files.
	## and remove DSIG table from *.tmp files.
	##
	
	cp ${nf} ${tmpf}
	cp ${inf} ${tmpif}
	
	sfntedit -d DSIG ${tmpf}
	sfntedit -d DSIG ${tmpif}
	
	fnts=`echo ${fnts} ${wt}/${tmpf} ${wt}/${tmpif}`
	
	cd ../
	
done

if otf2otc -o SourceHanCodeJP.ttc ${fnts} 2>&1 ; then :
else
	echo otf2otc error
	exit
fi

