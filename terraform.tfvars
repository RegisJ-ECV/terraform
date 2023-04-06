# Generic variables
region = "us-east-1"

# VPC variables
vpc_name             = "regis-vpc"
vpc_cidr             = "10.0.0.0/16"
vpc_azs              = ["us-east-1a", "us-east-1b"]
vpc_public_subnets   = ["10.0.1.0/24", "10.0.2.0/24"]
vpc_private_subnets  = ["10.0.11.0/24", "10.0.12.0/24"]
vpc_database_subnets = ["10.0.21.0/24", "10.0.22.0/24"]
vpc_tags             = { "created-by" = "regis" }

# ASG variables
asg_sg_name                             = "regis-asg-sg"
asg_sg_description                      = "regis-asg-sg"
asg_sg_tags                             = { "Name" = "regis-asg-sg", "created-by" = "regis", "terraform" = "true", "project" = "tfdeploy" }
asg_name                                = "regis-asg"
asg_min_size                            = 0
asg_max_size                            = 2
asg_desired_capacity                    = 2
asg_wait_for_capacity_timeout           = 0
asg_health_check_type                   = "EC2"
asg_launch_template_name                = "regis-lt"
asg_launch_template_description         = "regis-lt"
asg_update_default_version              = true
asg_image_id                            = "ami-0aea3d41d47975a5c"
asg_instance_type                       = "t2.micro"
asg_ebs_optimized                       = true
asg_enable_monitoring                   = true
asg_create_iam_instance_profile         = true
asg_iam_role_name                       = "regis-asg-iam-role"
asg_iam_role_path                       = "/ec2/"
asg_iam_role_description                = "regis-asg-iam-role"
asg_iam_role_tags                       = { "Name" = "regis-asg-iam-role", "created-by" = "regis", "terraform" = "true", "project" = "tfdeploy" }
asg_block_device_mappings_volume_size_0 = 20
asg_block_device_mappings_volume_size_1 = 30
asg_instance_tags                       = { "Name" = "regis-asg-instance", "created-by" = "regis", "terraform" = "true", "project" = "tfdeploy" }
asg_volume_tags                         = { "Name" = "regis-asg-volume", "created-by" = "regis", "terraform" = "true", "project" = "tfdeploy" }
asg_tags                                = { "Name" = "regis-asg", "created-by" = "regis", "terraform" = "true", "project" = "tfdeploy" }

# ALB variables
alb_sg_name                    = "regis-alb-sg"
alb_sg_ingress_cidr_blocks     = ["0.0.0.0/0"]
alb_sg_description             = "regis-alb-sg"
alb_sg_tags                    = { "Name" = "regis-alb-sg", "created-by" = "regis", "terraform" = "true", "project" = "tfdeploy" }
alb_name                       = "regis-alb"
alb_http_tcp_listeners_port    = 80
alb_target_group_name          = "regis-alb-tg"
alb_target_groups_backend_port = 80
alb_tags                       = { "Name" = "regis-alb", "created-by" = "regis", "terraform" = "true", "project" = "tfdeploy" }

# RDS variables
rds_sg_name                               = "regis-rds-sg"
rds_sg_description                        = "regis-rds-sg"
rds_sg_tags                               = { "Name" = "regis-rds-sg", "created-by" = "regis", "terraform" = "true", "project" = "tfdeploy" }
rds_identifier                            = "regis-rds"
rds_mysql_engine                          = "mysql"
rds_engine_version                        = "8.0.27"
rds_family                                = "mysql8.0" # DB parameter group
rds_major_engine_version                  = "8.0"      # DB option group
rds_instance_class                        = "db.t2.small"
rds_allocated_storage                     = 20
rds_max_allocated_storage                 = 100
rds_db_name                               = "regis_mysql"
rds_username                              = "regis_user"
rds_port                                  = 3306
rds_multi_az                              = false
rds_maintenance_window                    = "Mon:00:00-Mon:03:00"
rds_backup_window                         = "03:00-06:00"
rds_enabled_cloudwatch_logs_exports       = ["general"]
rds_create_cloudwatch_log_group           = true
rds_backup_retention_period               = 0
rds_skip_final_snapshot                   = true
rds_deletion_protection                   = false
rds_performance_insights_enabled          = false
rds_performance_insights_retention_period = 7
rds_create_monitoring_role                = true
rds_monitoring_interval                   = 60
rds_tags                                  = { "Name" = "regis-rds", "created-by" = "regis" , "terraform" = "true", "project" = "tfdeploy"}
rds_db_instance_tags                      = { "Name" = "regis-rds-instance", "created-by" = "regis", "terraform" = "true", "project" = "tfdeploy" }
rds_db_option_group_tags                  = { "Name" = "regis-rds-option-group", "created-by" = "regis", "terraform" = "true", "project" = "tfdeploy" }
rds_db_parameter_group_tags               = { "Name" = "regis-rds-db-parameter-group", "created-by" = "regis", "terraform" = "true", "project" = "tfdeploy" }
rds_db_subnet_group_tags                  = { "Name" = "regis-rds-db-subnet-group", "created-by" = "regis", "terraform" = "true", "project" = "tfdeploy" }