#!/bin/sh

#change directory to wherever Cytoscape is installed
/root/cytoscape-unix-3.2.1/Cytoscape &

#change directory to wherever testBMA.R is installed
Rscript /root/testBMA.R
