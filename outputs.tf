output "s3control_bucket_policies_id" {
  description = "Map of id values across all s3control_bucket_policies, keyed the same as var.s3control_bucket_policies"
  value       = { for k, v in aws_s3control_bucket_policy.s3control_bucket_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "s3control_bucket_policies_bucket" {
  description = "Map of bucket values across all s3control_bucket_policies, keyed the same as var.s3control_bucket_policies"
  value       = { for k, v in aws_s3control_bucket_policy.s3control_bucket_policies : k => v.bucket if v.bucket != null && length(v.bucket) > 0 }
}
output "s3control_bucket_policies_policy" {
  description = "Map of policy values across all s3control_bucket_policies, keyed the same as var.s3control_bucket_policies"
  value       = { for k, v in aws_s3control_bucket_policy.s3control_bucket_policies : k => v.policy if v.policy != null && length(v.policy) > 0 }
}
output "s3control_bucket_policies_region" {
  description = "Map of region values across all s3control_bucket_policies, keyed the same as var.s3control_bucket_policies"
  value       = { for k, v in aws_s3control_bucket_policy.s3control_bucket_policies : k => v.region if v.region != null && length(v.region) > 0 }
}

