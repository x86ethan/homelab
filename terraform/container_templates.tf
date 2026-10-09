resource "proxmox_download_file" "debian-container-template" {

    node_name = "pastabox" 
    content_type = "vztmpl"
    datastore_id = "local" 

    url = "https://cloud.debian.org/images/cloud/bookworm/latest/debian-12-generic-amd64.tar.xz"
    checksum = "56e8030c7ba1c154664819c5983eba6096d962efba2b5f899056def6122ee1f072960adbdc489b15b88889e7c3d15ba4f1f2743bc8389917443e7749eb660974"
    checksum_algorithm = "sha512"

    file_name = "alpine-minirootfs-3.24.0-x86_64.tar.gz"
    
    verify = false

}