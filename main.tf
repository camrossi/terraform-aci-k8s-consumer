data "terraform_remote_state" "network" {
  backend = "remote"
  config = {
    organization = "cisco-dcn-ecosystem"
    workspaces = {
      name = "camrossi-terraform-aci-k8s"
    }
  }
}
#Comment
output "instance_ip_addr" {
    value = data.terraform_remote_state.network.outputs.frontend_service
}
