data "ns_connection" "compute-environment" {
  name     = "compute-environment"
  contract = "cluster/aws/batch:fargate"
}

locals {
  compute_environment_arn  = data.ns_connection.compute-environment.outputs.compute_environment_arn
  compute_environment_name = data.ns_connection.compute-environment.outputs.compute_environment_name
}
