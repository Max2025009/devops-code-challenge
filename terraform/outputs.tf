output "ecs_cluster_id" {
  description = "The ID of the created ECS cluster"
  value       = aws_ecs_cluster.devops_cluster.id
}

output "backend_task_definition_arn" {
  description = "The ARN of the backend ECS task definition"
  value       = aws_ecs_task_definition.backend_task.arn
}

output "frontend_task_definition_arn" {
  description = "The ARN of the frontend ECS task definition"
  value       = aws_ecs_task_definition.frontend_task.arn
}
