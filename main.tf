data "terraform_remote_state" "network" {
  backend = "remote"
  config = {
    organization = var.org
    workspaces = {
      name = camrossi-terraform-aci-k8s
    }
  }
}

data "frontend_service" "guestbook" {
    value = data.terraform_remote_state.network.outputs.frontend_service
}

