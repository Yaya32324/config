provider "google" {
  credentials = file("/home/instance-2/terraform/lab.json")
  project     = "vm1"
  region      = "europe-north"
}

resource "google_compute_instance" "vm_instance" {
  name         = "my-vm"
  machine_type = "e2-medium"
  zone         = "europe-north-a"
  boot_disk {
    initialize_params {
      size = "30"
      image = "ubuntu-2004-focal-v20211212"
    }
  }
  network_interface {
    network = "default"
  }
}
