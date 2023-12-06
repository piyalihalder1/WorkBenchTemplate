template  = {
  repo    = "workstream-misc--template"
  path    = "iam"
  version = "v3.11.0"
}
################################################################################
# ****** Below values are for reference only. Actual values may differ. ****** #
################################################################################
#
## Manage IAM permissions for service accounts and groups
#
## project_id : Service project id for IAM needs to be changed
## project_permissions : Service account for project which needs to be created 
##                       and mapped against the roles
## group_project_permissions : Provided, group names should be valid and availble in gsuite domain.
##                             Assign the roles to group. In example "gg_mgmt-cmp-tst_devops_o" 
##                             which is an existing group
## remote_project_permissions : Remote service account should be already created,
##                              as only roles can be applied
## org_domain : Org domain name with which group is created
project_id = "ap-mld001-prd-06-9dd2"
org_domain = "e.lloydsbanking.com"
project_permissions = {
    "svc-awb-vertex-user" = [
    "roles/logging.logWriter",
    "roles/monitoring.metricWriter", # compute GR
    "roles/stackdriver.resourceMetadata.writer", # compute GR
    "organizations/233526418605/roles/custom.svc.vertexaiuser", # Vertex AI custom role
    "roles/logging.viewer" # logging/debugging
  ]
}
group_project_permissions = {}
remote_project_permissions = {
  "svc-gke-dynatrace-prd@mgmt-ple-prd-83f7.iam.gserviceaccount.com"  = ["organizations/233526418605/roles/custom.svc.dynatrace.gcpservicemonitoring"]
  "svc-gke-resprov-ap-prd@mgmt-ple-prd-83f7.iam.gserviceaccount.com" = ["roles/notebooks.admin"]
}
org_permissions = {}
workload_identity = {}
serviceaccount_user = {
  "svc-awb-vertex-user" = {
    "sa_full_name" = "serviceAccount:svc-awb-vertex-user@ap-mld001-prd-06-9dd2.iam.gserviceaccount.com"
  } # allow the SA to act as itself for Vertex AI Pipelines execution
}