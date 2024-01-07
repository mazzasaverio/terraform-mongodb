
terraform {
  required_providers {
    mongodbatlas = {
      source = "mongodb/mongodbatlas"
    }

  }
  required_version = ">= 0.13"
}


provider "mongodbatlas" {
  public_key  = var.mongo_atlas_public_key
  private_key = var.mongo_atlas_private_key
}

/* -------------------------------------------------------------------------- */
/*                                   MODULES                                  */
/* -------------------------------------------------------------------------- */


module "mongodb_atlas" {
  source                   = "./modules/mongodb_atlas"
  mongo_atlas_org_id       = var.mongo_atlas_org_id
  mongo_atlas_project_name = var.mongo_atlas_project_name
  mongo_atlas_db_username  = var.mongo_atlas_db_username
  mongo_atlas_db_password  = var.mongo_atlas_db_password

  mongo_atlas_region               = var.mongo_atlas_region
  mongo_cluster_instance_size_name = var.mongo_cluster_instance_size_name
  mongo_db_name                    = var.mongo_db_name


}


