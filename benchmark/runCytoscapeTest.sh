#!/bin/sh

START=$(date +%s);
/root/cytoscape-unix-3.3.0/cytoscape.sh --rest &
Rscript /root/testBMA.R
END=$(date +%s);
echo $((END-START)) | awk '{print int($1/60)":"int($1%60)}'
