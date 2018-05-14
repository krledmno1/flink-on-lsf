if [ $LSB_JOBINDEX -eq 1  ]; then 
  #Execute on master

  bin=`dirname "$0"`
  bin=`cd "$bin"; pwd`

  sed -e 's/jobmanager\.rpc\.address\:*/jobmanager\.rpc\.address\: $(hostname)/g' "$bin"/../conf/flink-conf.yaml.template > "$bin"/../conf/flink-conf.yaml

  . "$bin"/config.sh

  "$FLINK_BIN_DIR"/jobmanager.sh start

   

else

  #Execute on slaves

  bin=`dirname "$0"`
  bin=`cd "$bin"; pwd`

  # check for config change

  . "$bin"/config.sh

  # check for jobmanager

  "${FLINK_BIN_DIR}"/taskmanager.sh start

fi 
