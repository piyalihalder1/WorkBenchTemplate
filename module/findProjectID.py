import configparser

project_environment = input ("Enter project environemnt : ")
config = configparser.ConfigParser()
config.read("/Users/PIYALI.HALDER/ghe-repos/WorkBenchTemplate/config/projectDetails.ini")

project_id = config['DEFAULT'][project_environment]

print(project_id)