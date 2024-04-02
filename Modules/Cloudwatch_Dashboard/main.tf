resource "aws_cloudwatch_dashboard" "main" {
  dashboard_name = "EC2_Instances_Dashboard"

  dashboard_body = jsonencode({
    widgets = [
      #Cycles through the instances IDs creating a dashboard for each instance
      for instance, id in var.instance_ids : {
        type        = "metric"
        x           = 0
        y           = 0
        width       = 6
        height      = 6
        properties  = {
          region = "eu-west-2"
          #sets a title for each dashboard using the instance ID
          title = "CPU Utilization - ${id}"
          view  = "timeSeries"
          stacked = false
          metrics = [
            ["AWS/EC2", "CPUUtilization", "InstanceId", id]
          ]
          period = 300
        }
      }
    ]
  })
}
