#!/bin/bash -l
#$ -P cometsfba
#$ -N eggnog_hot1a3
#$ -pe omp 16
#$ -j y  # Merge the error and output streams into a single file

module load miniconda

# Activate the eggnog environment
conda activate /projectnb/cometsfba/hscott/envs/eggnog

# Run EggNOG-mapper
emapper.py -i genome/ncbi_dataset/data/GCF_001578515.1/protein.faa --output genome/eggnog_output --cpu 16