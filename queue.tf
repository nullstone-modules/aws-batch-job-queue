resource "aws_batch_job_queue" "this" {
  name     = local.resource_name
  state    = "ENABLED"
  priority = 1

  compute_environment_order {
    order               = 1
    compute_environment = local.compute_environment_arn
  }
}
