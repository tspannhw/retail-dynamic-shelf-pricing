# No Kerberos 

HADOOP_USER_NAME=hdfs hdfs dfs -mkdir /user/admin
HADOOP_USER_NAME=hdfs hdfs dfs -mkdir /user/root
HADOOP_USER_NAME=hdfs hdfs dfs -chown root:root /user/root
HADOOP_USER_NAME=hdfs hdfs dfs -chown admin:admin /user/admin
HADOOP_USER_NAME=hdfs hdfs dfs -chmod -R 777 /user
HADOOP_USER_NAME=hdfs hdfs dfs -mkdir /user/kafka
HADOOP_USER_NAME=hdfs hdfs dfs -mkdir /tmp/sensors
HADOOP_USER_NAME=hdfs hdfs dfs -chmod -R 777 /tmp/sensors
HADOOP_USER_NAME=hdfs hdfs dfs -chown kafka:kafka /user/kafka
HADOOP_USER_NAME=hdfs hdfs dfs -chown kafka:kafka /tmp/sensors
HADOOP_USER_NAME=hdfs hdfs dfs -mkdir /tmp/itemprice
HADOOP_USER_NAME=hdfs hdfs dfs -chmod -R 777 /tmp/itemprice
HADOOP_USER_NAME=hdfs hdfs dfs -chown kafka:kafka /tmp/itemprice
