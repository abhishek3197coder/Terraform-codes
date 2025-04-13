module "resource_group"{
    source = "../resource_group"
}

module "storage_group"{
    depends_on = [ module.resource_group ]
    source = "../storage_group"
}
