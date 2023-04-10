module "alb-public" {
  source               = "./vendor/modules/alb"     # Terrafile is going to download the code from the respective branch of the repo and keeps it local
  ALB_NAME             = "roboshop-public-alb"
  ENV                  = var.ENV
  INTERNAL             = false

}

module "alb-private" {
  source               = "./vendor/modules/alb"     # Terrafile is going to download the code from the respective branch of the repo and keeps it local
  ALB_NAME             = "roboshop-private-alb"
  ENV                  = var.ENV
  INTERNAL             = true

}