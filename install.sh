wget http://www-eu.apache.org/dist/flink/flink-1.4.2/flink-1.4.2-bin-hadoop28-scala_2.11.tgz
tar -xvf flink-1.4.2-bin-hadoop28-scala_2.11.tgz
mv flink-1.4.2 flink
cp fiink/conf/flink-conf.yaml fiink/conf/flink-conf.yaml.template
cp run.sh fiink/bin

module load java/1.8.0_91
module load open_mpi/1.6.5

