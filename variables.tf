variable "location" {
  default     = "West Europe"
  description = "Location of the resource group."
}

variable "service" {
  type        = string
  default     = "Innovation"
  description = "Definition of application deployment is subjected to."
}

variable "environment" {
  type        = string
  default     = "Dev"
  description = "Definition of environment for the deployment."
}

variable "prefix" {
  type        = string
  default     = "001"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "project" {
  type        = string
  default     = "Demo"
  description = "Project name for resource tagging"
}