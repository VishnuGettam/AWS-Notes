#install the stress tool to increase the CPU utilization

yum install stress -y


#increase the CPU utilization to 50% for 10 seconds

stress --cpu 1 --timeout 10s