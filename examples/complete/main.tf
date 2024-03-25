module "roboshop" {
    #source = "../terraform-aws-vpc"
    source = "git::https://github.com/YarramsettiSwamynaidu/terraform-aws-vpc.git?ref=main"
    project_name = var.project_name
    environment = var.environment
    comman_tags = var.comman_tags

    #public_subnet_cidr
    public_subnet_cidr = var.public_subnet_cidr

    #private_subnet_cidr
    private_subnet_cidr = var.private_subnet_cidr
    
    #database_subnet_cidr
    database_subnet_cidr = var.database_subnet_cidr

    #is_peering
    is_peering_is_required = var.is_peering_is_required
}