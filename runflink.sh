# See https://docs.cloudera.com/csa/1.1.0/job-lifecycle/topics/csa-run-job.html
# https://github.com/tspannhw/FlinkSQLDemo
# https://github.com/cloudera/flink-tutorials/tree/master/flink-simple-tutorial#running-the-application-on-a-cloudera-cluster

# Setup HDFS Permissions

HADOOP_USER_NAME=hdfs hdfs dfs -mkdir /user/admin
HADOOP_USER_NAME=hdfs hdfs dfs -mkdir /user/root
HADOOP_USER_NAME=hdfs hdfs dfs -chown root:root /user/root
HADOOP_USER_NAME=hdfs hdfs dfs -chown admin:admin /user/admin
HADOOP_USER_NAME=hdfs hdfs dfs -chmod -R 777 /user

# Run Flink App

flink run --jobmanager yarn-cluster --detached --parallelism 1 --yarnname flinkKafkaGroup iot-1.0.jar


# From SQL tutorial
# https://github.com/cloudera/flink-tutorials/tree/master/flink-sql-tutorial
# Must compile Flink app with JDK 8

flink run --classpath file:///opt/cloudera/parcels/CDH/lib/hadoop/client/hadoop-mapreduce-client-core.jar -d -p 2 -ys 2 -ynm IoTKafka -c dev.datainmotion.iot.IoTKafka  iot-1.0.jar
