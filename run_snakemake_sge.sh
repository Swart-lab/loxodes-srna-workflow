#!/bin/bash
set -e

# Script containing boilerplate for running snakemake_sge.sh
# Requires that snakemake_sge.sh is in PATH

# Specify additional parameters (e.g. --dryrun) and rule names 
# after invoking this script 

SNAKEMAKE_ENV=
WD=

source activate $SNAKEMAKE_ENV

# Use snakemake_sge.sh to run on cluster
# submit 16 jobs at a time
snakemake_sge.sh \
$WD/workflow/config.yaml \
$WD/workflow/cluster.json \
logs_SGE \
16 \
--use-conda \
--conda-frontend mamba \
--printshellcmds \
--conda-prefix $WD/envs \
-s $WD/workflow/Snakefile $@
