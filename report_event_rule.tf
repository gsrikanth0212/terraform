resource "aws_cloudwatch_event_rule" "daily" {
  name                = "dbt-daily-dev"
  schedule_expression = "rate(1 day)"
}

resource "aws_cloudwatch_event_target" "step_function_target" {
  rule = aws_cloudwatch_event_rule.daily.name
  arn  = aws_sfn_state_machine.dbt.arn
  role_arn = var.step_function_role_arn
}
