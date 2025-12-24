resource "aws_sfn_state_machine" "dbt" {
  name     = "${var.env}_${var.step_function_name}"
  role_arn = var.step_function_role_arn

  definition = jsonencode({
    StartAt = "TriggerDBT"
    States = {
      TriggerDBT = {
        Type     = "Task"
        Resource = aws_lambda_function.dbt_trigger.arn
        Next     = "CheckStatus"
      }
      CheckStatus = {
        Type     = "Task"
        Resource = aws_lambda_function.dbt_run_status.arn
        End      = true
      }
    }
  })
}
