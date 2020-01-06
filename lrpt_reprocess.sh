#######################################################################
#
# Reprocess all the METEORs audio files (in case of changes of 
# settings in lrpt.sh)
#
# Usage: ./lrpt_reprocess.sh <directory_path_where_meteor_audios_are>
#
#######################################################################

dir=`pwd`
rm -f $dir/job

for filename in `ls $1/*.wav | sed -e 's/\..*$//' | grep -v res`; do

    if [[ ! -f "${filename}.png" ]]; then
	
	echo $filename
	echo "./lrpt.sh $filename" >> $dir/job

    fi
    
done

cd $dir
#bash job
#rm -f job
