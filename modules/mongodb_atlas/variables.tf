variable "mongo_atlas_org_id" {
  description = "Atlas Organization ID"
  type        = string
}

variable "mongo_atlas_project_name" {
  description = "Atlas Project Name"
  type        = string
}

variable "mongo_atlas_db_username" {
  type        = string
  description = "MongoDB Username"
}

variable "mongo_atlas_db_password" {
  type        = string
  description = "MongoDB Password"
}


variable "mongo_atlas_region" {
  description = "Atlas region where resources will be created"
  type        = string
}


variable "mongo_cluster_instance_size_name" {
  description = "Cluster instance size name"
  type        = string
  default     = "M0" # Free tier size
}
variable "mongo_db_name" {
  description = "MongoDB Database Name"
  type        = string
  default     = "test"
}
