import module.findUserDataBucket as findUserDataBucket
import module.findProjectID as findProjectID


prj_env = findProjectID.project_environment
config_bucket="ap-mld001-"+prj_env+"-stb-euwe2-config-0001"
user_data = findUserDataBucket.bucket_name

#print(config_bucket)
#print(config_bucket)
user_data_bucket = config_bucket+"/data-"+user_data
print(user_data_bucket)