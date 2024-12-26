#!/bin/bash

#SBATCH -p hpc-bio-pascal                      # Nombre de la partición
#SBATCH --chdir=/home/alumno25/lab-gpu        # Directorio de trabajo
#SBATCH --cpus-per-task=4                     # Número de CPUs por tarea
#SBATCH -o reduc-par-%u.out                   # Archivo de salida

module load anaconda/2023.03                  # Cargar el módulo de Anaconda

echo "Ejecutando el notebook con $1 elementos"
ipython reduc-operation-array_par-alumno25.ipynb $1  # Ejecutar el notebook con el valor proporcionado

module unload anaconda/2023.03                # Descargar el módulo

