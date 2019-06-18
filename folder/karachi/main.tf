
module "karachi_folder" {

source = "git::http://somemodulerepo.git//folder/?ref=v0.2"

gcp_project_id = "low-kobalt-sb-dvops-tmp-intrnl"
gcp_region = "us-east4"
instance_machine_type = "f1-micro"
instance_zone = "us-east4-a"
instance_image = "centos-cloud/centos-7"
network_name = "default"
instance_env = "sandbox"
instance_main = "saturday"
instance_dept = "cloud"
appname = "daci"
techcon = "cloud"
dataclass = "public"
expdate = "2019-06-2012"
timewindow = "06"
description = "demo"
regcompliance = "pci"
company_identifier = "low"
cloud_identifier = "gcp"
os_family = "linux"
}
