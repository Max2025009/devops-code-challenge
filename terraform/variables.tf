variable "aws_region" {
  description = "The AWS region to deploy the infrastructure"
  type        = string
  default     = "us-east-1"
}

variable "backend_image" {
  description = "Docker image URL for the backend"
  type        = string
}

variable "frontend_image" {
  description = "Docker image URL for the frontend"
  type        = string
}

variable "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
  default     = "devops-cluster"
}
