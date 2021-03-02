data "terraform_remote_state" "network" {
  backend = "remote"
  config = {
    organization = var.org
    workspaces = {
      name = camrossi-terraform-aci-k8s
    }
  }
}



