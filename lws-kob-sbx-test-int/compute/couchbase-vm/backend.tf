
// Configure the Google Cloud provider
provider "google" {
// We will not be using explicit path to credentials for the provider to create this folder.    
// Credentials will be picked up from the Environment variables GOOGLE_CREDENTIALS/GOOGLE_APPLICATION_CREDENTIALS    
// Uncomment the below line only when you want to use credentials explicitly.    
# credentials = "${file("creds.json")}"
}

// Configure a backend for storing the state file
// This is the bucket where the state file for the folder and the underlying project is stored.
// Configured to store the state file in the kobalt bootstrap project.
terraform {
  backend "gcs" {
    bucket = "lws-kob-sbx-test-int-tfstate"
    prefix = "compute/couchbase-vm/"
  }
}
