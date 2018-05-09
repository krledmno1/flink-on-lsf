wget http://www-eu.apache.org/dist/flink/flink-1.4.2/flink-1.4.2-bin-hadoop28-scala_2.11.tgz
tar -xvf flink-1.4.2-bin-hadoop28-scala_2.11.tgz
mv flink-1.4.2 flink
rm -r flink/bin
rm -r fiink/conf
ln -s bin flink/bin
ln -s conf flink/conf

module load java/1.8.0_91
