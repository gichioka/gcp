provider "google" {
       

       project = "third-index-273522"

	region  = "asia-northeast1"

  }

  

  resource "google_compute_instance" "apps-gcp-terraform" {

	name         = "apps-gcp-terraform"

	machine_type = "e2-micro"

	zone         = "asia-northeast1-a"

	boot_disk {

	  initialize_params {

		size  = 10

		type  = "pd-standard"

		image = "debian-cloud/debian-9"

	  }

	}

  

	network_interface {

	  network       = "default"
          
         access_config {}

	}

  }












