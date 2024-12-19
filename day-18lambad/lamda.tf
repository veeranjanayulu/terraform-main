resource "aws_lambda_function" "my_lambda" {
  function_name = "lambda_function"

  s3_bucket = "s2lambadabucket"  # Replace with your actual S3 bucket
  s3_key    = "python.zip"       # Path to the function's zip file in S3

  handler = "python.lambda_function"
  runtime = "python3.8"

  role = aws_iam_role.lambda_role.arn   # The IAM role to be assumed by Lambda

  environment {
    variables = {
      DB_HOST = "database-1.cdg4uc082tzi.ca-central-1.rds.amazonaws.com"  # Replace with your actual RDS endpoint
      DB_USER = "admin"   # Replace with your DB username
      DB_PASS = "hemanth123"   # Replace with your DB password
    }
  }
}

resource "aws_lambda_layer_version" "my_layer" {
  layer_name = "my-layer"
  description = "A Lambda layer with custom libraries"
  compatible_runtimes = ["python3.8"]  # Set the runtime that is compatible with the layer
  s3_bucket = "s2lambadabucket"  # S3 bucket where the layer zip file is stored
  s3_key    = "pymysql_layer.zip"  # Path to the zip file in S3
}
