#!/bin/bash
#SBATCH --job-name=reduc_gpu_nikola
#SBATCH -o salida_%j_%u.txt
#SBATCH --partition=hpc-bio-nikola-gpu
#SBATCH --chdir=/home/alumno25/lab-gpu

module load anaconda/2023.03          # Cargar el módulo necesario

# Ejecutar el script para diferentes valores de `value`
for value in 5000000 50000000 500000000
do
    echo "Ejecutamos el script de reducción para value = $value"
    srun ipython reduc-operation-array_gpu-alumno25.ipynb $value
done

# Descargar el módulo para evitar conflictos posteriores
module unload anaconda/2023.03
