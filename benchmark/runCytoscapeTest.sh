#!/bin/sh

START=$(date +%s);
/root/cytoscape-unix-3.3.0/cytoscape.sh -R 1234 &
Rscript /root/testBMA.R
END=$(date +%s);
echo "START TIME:" $START "END TIME:" $END
echo $((END-START)) | awk '{print "Elapsed Time = " int($1/60)":"int($1%60)}'
