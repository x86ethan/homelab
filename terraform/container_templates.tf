resource "proxmox_download_file" "alpine-container-template" {

    node_name = "pastabox" 
    content_type = "vztmpl"
    dastastore_id = "local" 

    url = "https://dl-cdn.alpinelinux.org/alpine/latest-stable/releases/x86_64/alpine-minirootfs-3.24.0-x86_64.tar.gz"
    checksum = "de9a11c0e0e7e9c94db3ed8af7b450eafc0b13687bd7e9199d55050f20aa0a89"
    checksum_algorithm = "sha256"

    file_name = "alpine-minirootfs-3.24.0-x86_64.tar.gz"
    
    verify = false

}