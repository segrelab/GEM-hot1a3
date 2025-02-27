#!/bin/bash -l
#$ -P cometsfba
#$ -N carveme-hot1a3
#$ -pe omp 16
#$ -o make_carveme_model.out
#$ -j y  # Merge the error and output streams into a single file

module load python3/3.6.12
module load cplex

# Unload the python module so that I can load my own conda environment
module unload python3/3.6.12

# Activate the CarveMe environment
module load miniconda
conda activate /projectnb/cometsfba/hscott/envs/carveme-dev


# Run CarveMe
carve --egg genome/eggnog_output.emapper.annotations \
    -g mbm_glc__D,l1_glc__D,mbm_ac,l1_ac \
    --mediadb /projectnb/cometsfba/hscott/GEM-repos/GEM-mit1002/test/test_files/media/media_database.tsv \
    --fbc2 \
    -o carveme_model.xml \
    -v --debug