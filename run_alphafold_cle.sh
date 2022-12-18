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

data_dir=/srv/projects/db/alphafold 
DOWNLOAD_DIR=/rhome/zli529/GEN220
output_dir=/rhome/zli529/GEN220/out
model_names=model_1 
fasta_path=/rhome/zli529/GEN220/protein.fasta
max_template_date=2022-011-12 
use_gpu=true 
openmm_threads=24 
gpu_devices=0
benchmark=false 

module load singularity/3.9.3
module load alphafold/2.1.2


