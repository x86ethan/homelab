resource "proxmox_virtual_environment_oci_image" "syncthing" {
  node_name    = "pastabox"
  datastore_id = "local"
  reference    = "docker.io/library/syncthing/syncthing:latest"
}