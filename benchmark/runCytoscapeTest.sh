#!/bin/sh

START=$(date +%s);
/root/cytoscape-3.3.0/Cytoscape.sh &
Rscript /root/testBMA.R
END=$(date +%s);
echo $((END-START)) | awk '{print int($1/60)":"int($1%60)}'
