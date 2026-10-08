terraform {
  required_version = ">= 0.12"
  required_providers {
    proxmox = {
        source = "bpg/proxmox"
        version = "~> 0.114"
    }
  }
  backend "s3" {
    endpoints =  {
      s3 = "http://terraform-backend:3900"
    } 

    bucket = "bucket"
    key = "tfstate"
    region = "garage"

    use_path_style = true

    skip_credentials_validation = true
    skip_requesting_account_id = true
    skip_region_validation = true
    skip_metadata_api_check = true
    skip_s3_checksum = true 

    use_lockfile = true
  }
  
}

provider "proxmox" {
    endpoint = "https://pastabox:8006"
    insecure = true
    
    
}
