



# ------------------------------- MONGODB ATLAS ------------------------------- #

variable "mongo_atlas_org_id" {
  type        = string
  description = "Atlas Organization ID"
}

variable "mongo_atlas_project_name" {
  type        = string
  description = "Atlas Project Name"
}


variable "mongo_atlas_public_key" {
  description = "Public key for MongoDB Atlas"
  type        = string
}

variable "mongo_atlas_private_key" {
  description = "Private key for MongoDB Atlas"
  type        = string
  sensitive   = true
}


variable "mongo_atlas_db_username" {
  description = "MongoDB Username"
  type        = string
}

variable "mongo_atlas_db_password" {
  description = "MongoDB Password"
  type        = string
  sensitive   = true
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
