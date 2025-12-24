variable "env" {
  description = "The environment name for the deployment"
  type        = string
  default     = "dev"
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "inbound-bucket-dbt-project"
}

variable "dbt_trigger_lambda_name" {
  description = "The name of the DBT trigger Lambda function"
  type        = string
  default     = "dbt-trigger-lambda"
}

variable "dbt_status_lambda_name" {
  description = "The name of the DBT status Lambda function"
  type        = string
  default     = "dbt-status-lambda"
}

variable "step_function_name" {
  description = "The name of the Step Function"
  type        = string
  default     = "dev_dbt_step_function"
}

variable "lambda_role_arn" {
  description = "The ARN of the Lambda role"
  type        = string
  default     = "arn:aws:iam::406868976275:role/dbt-lambda-role-dev"
}

variable "step_function_role_arn" {
  description = "The ARN of the Step Function role"
  type        = string
  default     = "arn:aws:iam::406868976275:role/dbt-step-role-dev"
}

variable "dat_secret_name" {
  type = string
}