#PBS -l nodes=np_nodes:ppn=np_threads
#PBS -N expname
#PBS -o expname.out
#PBS -e expname.err

cd $PBS_O_WORKDIR

export EXPHDR_tmp='expname ../../DATA/expname'

date > runtime

mpirun -np total_cores ./vvm < INPUT | tee OUTPUT

date >> runtime


