hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_ecs_cluster" "devops_cluster" {
  name = "devops-cluster"
}

resource "aws_ecs_task_definition" "backend_task" {
  family                   = "backend-task"
  container_definitions    = jsonencode([
    {
      name      = "backend",
      image     = "backend-image-url",
      cpu       = 256,
      memory    = 512,
      essential = true
    }
  ])
}

resource "aws_ecs_task_definition" "frontend_task" {
  family                   = "frontend-task"
  container_definitions    = jsonencode([
    {
      name      = "frontend",
      image     = "frontend-image-url",
      cpu       = 256,
      memory    = 512,
      essential = true
    }
  ])
}