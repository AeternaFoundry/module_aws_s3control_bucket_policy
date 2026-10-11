variable "s3control_bucket_policies" {
  description = <<EOT
Map of s3control_bucket_policies, attributes below
Required:
    - bucket
    - policy
Optional:
    - region
EOT

  type = map(object({
    bucket = string
    policy = string
    region = optional(string)
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

