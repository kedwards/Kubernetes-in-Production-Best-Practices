aws_region = "us-east-1"
private_subnet_ids = [
  "subnet-0271ed5c0c8be9768",
  "subnet-0556eb27fd7b51a48",
  "subnet-029923ae597cc3f5b",
]
public_subnet_ids = [
  "subnet-0cfe3649538a26ffd",
  "subnet-026972b2c7847a45e",
  "subnet-0ff8f0a28b874b648",
]
vpc_id = "vpc-005f9d96523010d8a"
clusters_name_prefix  = "devopsclusters"
cluster_version       = "1.24"
workers_instance_type = "t3.medium"
workers_number_min    = 2
workers_number_max    = 3
workers_storage_size  = 10
