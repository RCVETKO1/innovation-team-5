variable "location" {
  default     = "West Europe"
  description = "Location of the resource group."
}

variable "service" {
  type        = string
  description = "Definition of application deployment is subjected to."
}

variable "environment" {
  type        = string
  default     = "Dev"
  description = "Definition of environment for the deployment."
}

variable "project" {
  type        = string
  default     = "Demo"
  description = "Project name for resource tagging"
}
