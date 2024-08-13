# # Create security group for ElastiCache
# # Allow all outbound traffic
# # Allow inbound traffic on port 6379
# resource "aws_security_group" "elasticache_security_group" {
#   name        = "elasticache-sg"
#   description = "Allow All traffic"
#   vpc_id      = aws_vpc.vpc.id

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     from_port   = 6379
#     to_port     = 6379
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }

# # Create Redis ElastiCache
# resource "aws_elasticache_serverless_cache" "redis_cache" {
#   engine = "redis"
#   name   = "${var.env}-redis-cache"

#   cache_usage_limits {
#     data_storage {
#       maximum = 10
#       unit    = "GB"
#     }

#     ecpu_per_second {
#       maximum = 5000
#     }
#   }

#   security_group_ids = [aws_security_group.elasticache_security_group.id]

#   subnet_ids = [
#     aws_subnet.private_subnet_a.id,
#     aws_subnet.private_subnet_b.id
#   ]
# }

