resource "proxmox_virtual_environment_container" "syncthing" {

    node_name =  "pastabox"

    depends_on = [proxmox_download_file.alpine-container-template]

    initialization {
        hostname = "syncthing" 

        user_account {
            password = "syncthing"
        }

        ip_config {
            ipv4 {
                address = "10.10.10.4/24"
                gateway = "10.10.10.1"
            }
        }
    }

    operating_system {
        template_file_id = proxmox_download_file.alpine-container-template.id
        type = "alpine"
    }

    disk {
        datastore_id = "local-lvm" 
        size = 8
    }

    cpu {
        cores = 2
    }

    memory {
        dedicated = 1024
        swap = 512
    }

    network_interface {
        name = "eth0"
        bridge = "vmbr1"
    }

}