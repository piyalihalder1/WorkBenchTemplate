import json 
import tfvars
import module.findConfigBucket as findConfigBucket
import module.findProjectID as findProjectID
import module.findUserDataBucket as findUserDataBucket
import module.findSubNetwork as findSubNetwork
import module.findUseCaseSA as findUseCaseSA
import module.findStartUpScriptPath as findStartUpScriptPath

tf = tfvars.LoadSecrets("/Users/PIYALI.HALDER/ghe-repos/WorkBenchTemplate/template/workbench-template.tfvars") 

tf["project_id"] = findProjectID.project_id
tf["subnetwork"] =  findSubNetwork.sub_network
tf["instance_owners"] = findUserDataBucket.email_address
tf["service_account"] = findUseCaseSA.use_case_sa
tf["gcs_data_bucket"] = findConfigBucket.user_data_bucket
tf["config_bucket_name"] = findConfigBucket.config_bucket
tf["post_startup_script"] = findStartUpScriptPath.path

print(tf)

# with open("/Users/PIYALI.HALDER/ghe-repos/WorkBenchTemplate/result/dummy.txt","w") as f:
#     tf1=f.write((tf))


