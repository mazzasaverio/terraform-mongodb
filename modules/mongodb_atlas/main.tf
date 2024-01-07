terraform {
  required_providers {
    mongodbatlas = {
      source = "mongodb/mongodbatlas"
    }
  }
  required_version = ">= 0.13"
}

resource "mongodbatlas_project" "project" {
  org_id = var.mongo_atlas_org_id
  name   = var.mongo_atlas_project_name
}

resource "mongodbatlas_cluster" "cluster" {
  project_id = mongodbatlas_project.project.id
  name       = "Cluster0"
  num_shards = 1

  cluster_type = "REPLICASET"

  replication_specs {
    num_shards = 1
    regions_config {
      region_name     = var.mongo_atlas_region
      electable_nodes = 3
      priority        = 7
      read_only_nodes = 0
    }
  }
  provider_name               = "GCP"
  provider_instance_size_name = var.mongo_cluster_instance_size_name
}


# Create a Database User
resource "mongodbatlas_database_user" "db-user" {
  username           = var.mongo_atlas_db_username
  password           = var.mongo_atlas_db_password
  project_id         = mongodbatlas_project.project.id
  auth_database_name = "admin"
  roles {
    role_name     = "readWrite"
    database_name = var.mongo_db_name
  }
}
