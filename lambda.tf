resource "aws_lambda_function" "dbt_trigger" {
  function_name = var.dbt_trigger_lambda_name
  role          = var.lambda_role_arn
  runtime       = "python3.13"
  handler       = "index.handler"

  filename         = "lambda_trigger.zip"
  source_code_hash = filebase64sha256("lambda_trigger.zip")

}

resource "aws_lambda_function" "dbt_run_status" {
  function_name = var.dbt_status_lambda_name
  role          = var.lambda_role_arn
  runtime       = "python3.13"
  handler       = "index.handler"

  filename         = "lambda_dbt_status.zip"
  source_code_hash = filebase64sha256("lambda_dbt_status.zip")

}
