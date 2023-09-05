module "qa" {
    source = "../modules/blog"

    environment = {
        name = "qa"
        network_prefix = "10.1"
    }

    min_instances = 1
    max_instances = 1
}