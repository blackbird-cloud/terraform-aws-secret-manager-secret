variable "name" {
  type        = string
  description = "Secret name"
}

variable "kms_key_id" {
  type        = string
  description = "KMS Key to encrypt secret"
  default     = null
}

variable "policy" {
  type        = string
  description = "JSON Policy for secret"
  default     = null
}

variable "generate_secret_password" {
  type        = bool
  description = "Automatically generate secret with username and password (`username` is required when true)"
  default     = false
}

variable "username" {
  type        = string
  description = "Username for to use when `generate_password` is set to true"
  default     = ""
}

variable "secret_value" {
  type        = map(any)
  description = "KV to be included in the secret"
  default     = {}
}
