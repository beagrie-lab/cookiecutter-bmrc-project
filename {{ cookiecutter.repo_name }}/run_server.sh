#!/bin/bash
#$ -l h_vmem=20G
#$ -cwd
#$ -N {{ cookiecutter.repo_name }}

export WORKON_HOME=$HOME/.virtualenvs
export PATH=/home/rbeagrie/.local/bin:/data/pombo/software/fastqc_recent:/data/pombo/software/bedtools_recent:/data/pombo/software/bowtie2_recent:/data/pombo/software/fastq_screen_recent:/home/rbeagrie/bin:$PATH
export PYTHONPATH=$(pwd)/lib/
source $WORKON_HOME/{{ cookiecutter.repo_name }}/bin/activate

ulimit -Sn 2048
ulimit -s 8042
jupyter notebook  --no-browser --port=38080
