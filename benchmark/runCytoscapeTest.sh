#!/bin/sh

START=$(date +%s);
sh /root/cytoscape-unix-3.3.0/cytoscape.sh &
Rscript /root/testBMA.R
END=$(date +%s);
echo $((END-START)) | awk '{print int($1/60)":"int($1%60)}'
