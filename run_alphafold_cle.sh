#!/usr/bin/bash
#SBATCH --job-name=zehaoli
#SBATCH --ntasks=24
#SBATCH -N 1 
#SBATCH --mem=48gb
#SBATCH --time=1-00:00:00
#SBATCH -p gpu
#SBATCH --gres=gpu:1
#SBATCH -J calp_alpha
##SBATCH --mail-type=ALL
##SBATCH --mail-user=zli529@ucr.edu 

# Path to directory of alphafold 
data_dir=/srv/projects/db/alphafold 
DOWNLOAD_DIR=/rhome/zli529/GEN220

# Path to directory that stores results
output_dir=/rhome/zli529/GEN220/out

# model name 
model_names=model_1

# path of protein sequence 
fasta_path=/rhome/zli529/GEN220/protein.fasta

# date to condider in the model
max_template_date=2022-011-12 

# run GPU
use_gpu=true

#OpenMM threads
openmm_threads=24

# Comma separated list of devices to pass to 'CUDA_VISIBLE_DEVICES'
gpu_devices=0

# Run multiple JAX model evaluations to obtain a timing that excludes the compilation time
benchmark=false 

# Load alphafold and singularity
module load singularity/3.9.3
module load alphafold/2.1.2


