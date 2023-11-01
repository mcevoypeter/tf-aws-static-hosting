output "domain" {
  description = "Domain the static bundle is hosted at"
  value       = var.domain
}

output "bucket_id" {
  description = "Name of the S3 bucket"
  value       = aws_s3_bucket.this.id
}

output "bucket_arn" {
  description = "ARN of the S3 bucket"
  value       = aws_s3_bucket.this.arn
}

output "distribution_id" {
  description = "ID of the CloudFront distribution"
  value       = aws_cloudfront_distribution.this.id
}

output "distribution_arn" {
  description = "ARN of the CloudFront distribution"
  value       = aws_cloudfront_distribution.this.arn
}

output "distribution_domain" {
  description = "cloudfront.net domain of the CloudFront distribution"
  value       = aws_cloudfront_distribution.this.domain_name
}
