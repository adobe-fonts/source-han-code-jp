#!/bin/sh

for wt in ExtraLight Light Normal Regular Medium Bold Heavy
do
	
	nf=SourceHanCodeJP-${wt}.otf
	inf=SourceHanCodeJP-${wt}It.otf
	
	tmpf=${nf}.tmp
	tmpif=${inf}.tmp 
	
	cd ${wt}
	pwd
	
	if sfntedit -x CFF=CFF.J ${nf} 2>&1 ; then :
	else
		echo sfntedit -x error
	fi
	
	cp ${nf} ${tmpf}
	cp ${inf} ${tmpif}
	
	if sfntedit -a CFF=CFF.J ${tmpif} 2>&1 ; then :
	else
		echo sfntedit -a error
	fi
	
	fnts=`echo ${fnts} ${wt}/${tmpf} ${wt}/${tmpif}`
	
	cd ../
	
done

if otf2otc -o SourceHanCodeJP.ttc ${fnts} 2>&1 ; then :
else
	echo otf2otc error
	exit
fi

