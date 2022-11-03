# Install zookeeper
brew install zookeeper

# Install kafka
brew install kafka

# Start zkeeper server
zKeeper server start

# Start kafka server
kafka-server-start /usr/local/etc/kafka/server.properties

# Create the topic for temperature-alarms
kafka-topics --create --bootstrap-server localhost:9092 --replication-factor 1 --partitions 1 --topic temperature-alarms

# Produce message
kafka-console-producer --broker-list localhost:9092 --topic temperature-alarms

# consume message
kafka-console-consumer --bootstrap-server localhost:9092 --topic temperature-alarms --from-beginning
