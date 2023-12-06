template  = {
  repo    = "workstream-data--template"
  path    = "awb"
  version = "v9.60.0"
  ipam    = true
}
################################################################################
# ****** Below values are for reference only. Actual values may differ. ****** #
################################################################################
#
## random_suffix : random string used for resource suffix
## host_project_id : A host project contains one or more Shared VPC networks. Modify project id ( not project name ) through which service project shares the VPC.
## project_id: Service project id where storage bucket needs to be created
## network : VPC Network name
## subnetwork : Subnetwork name belonging to service project
## region : Available region. Currently "europe-west2" is only supported
## Zone : Available Zone. 
## labels: Labels to be attached to the Vertex workbench instance.
## org_id : The GCP organization ID.
## environment : The developmnet environment that the GCP project is in.Availble options are [ bld | int | tst | pre | prd ]
## troux_id : Troux id of project
## cost_centre : Cost center for project
## owner : Owner of the resource
## dataclassification : Dataclassification can be one of public, limited, highly-confidential, confidential.
## environment : Use environment identifier. Availble options are [ bld | int | tst | pre | prd ]
## notebook_name : The name of notebook instance.
## instance_owners : The list of owners of this instance after creation.
## service_account : The service account on this instance, giving access to connect to other Google Cloud services.
## gpu_driver : Whether the end user authorizes Google Cloud to install GPU driver on this instance.
## boot_disk_type : Disk types for notebook instances. Possible values are DISK_TYPE_UNSPECIFIED, PD_STANDARD, PD_SSD, PD_BALANCED, and PD_EXTREME.
## boot_disk_size_gb : Disk size in GB for notebook instances.
## data_disk_type : Data Disk types for notebook instances. Possible values are DISK_TYPE_UNSPECIFIED, PD_STANDARD, PD_SSD, PD_BALANCED, and PD_EXTREME.
## data_disk_size_gb : Data Disk size in GB for notebook instances.
## disk_encryption : Disk encryption should always be CMEK.
## no_proxy_access : False to enable proxy.
## no_public_ip : If true , no public IP will be assigned to this instance.
## machine_type : A reference to a machine type which defines VM kind.
## image_family : "VM image name eg: https://cloud.google.com/vertex-ai/docs/workbench/user-managed/images.
## vm_img_proj_id : The project in which image belogs to.
## kms_project_id : KMS project id where hsm key resids for bucket encryption
## kms_key_ring : KMS Key ring for customer managed kms keys to be stored in
## kms_crypto_key : KMS crypto key ring in the kms key ring supplied
host_project_id        = "ap-mldhst-prd-7202"
host_project_number    = "479747171676"
project_id             = 
network                = "ap-prd-mldhst-cnw"
subnetwork             = 
region                 = "europe-west2"
zone                   = "europe-west2-a"
labels = {
  "cmdb_appid"         = "al17449"
  "org_id"             = "e_lloydsbanking_com"
  "owner"              = "lucy"
  "dataclassification" = "confidential"
  "cost_centre"        = "443078"
  "troux_id"           = "ap-mld001-al17449"
} 
business_area          = "consumer"
usecase                = "ocis"
iam_persona            = "data-scientist"
environment            = "prd"
instance_owners        = 
service_account        = 
gpu_driver             = false
boot_disk_type         = "PD_STANDARD"
boot_disk_size_gb      = 100
data_disk_type         = "PD_STANDARD" 
data_disk_size_gb      = 100
disk_encryption        = "CMEK"
no_proxy_access        = false
no_public_ip           = true
machine_type           = "n1-standard-1"
image_family           = "tf-2-11-cu113-notebooks-debian-11-py310"
vm_img_proj_id         = "deeplearning-platform-release"
kms_region             = "europe-west2"
kms_project_id         = "ap-mldkms-prd-01-5b15" 
kms_key_ring           = "krs-kms-ap-euwe2-awb" 
kms_crypto_key         = "keyhsm-kms-ap-euwe2-awb"
enable_workbench_url   = false
gcs_data_bucket        = 
# Values for Startup script
config_bucket_name     = 
post_startup_script    = 
# values for peering
enable_vpc_peering_service_controls = false
#  metadata for startup.sh
pipeline_base_image    = "eu.gcr.io/mgmt-bak-prd-dbdf/ap_mld_rtl/ap-mld-img-pipeline-component:release_v0.14.0"
edhcon_project_id      = "ap-edhcon-prd-01-2cad"
pip_index_url          = "https://nexus3.devops.lloydsbanking.com/repository/python-proxy/"