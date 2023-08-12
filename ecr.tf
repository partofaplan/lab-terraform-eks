module "ecr-repo" {
  source           = "./"
  ecr_name         = var.ecr_name
  tags             = var.tags
  image_mutability = var.image_mutability

}