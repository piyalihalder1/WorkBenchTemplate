import module.findConfigBucket as findConfigBucket

path="gs://"+findConfigBucket.config_bucket+"/prd/startup.sh"

print(path)