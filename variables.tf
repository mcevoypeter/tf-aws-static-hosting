variable "domain" {
  description = "Domain to host at"
  type        = string
}

variable "functions" {
  description = "CloudFront functions to attach to the CloudFront distribution. Max of one function per event type (i.e. viewer-request and viewer-response)."
  type        = set(object({ event_type = string, function_arn = string }))
  default     = []
}
