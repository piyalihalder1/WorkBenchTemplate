import re

email_address = input ("Enter user email address : ")

pattern = r"^(.*?)@"
bucket_pattern = r"[a-zA-Z]+[.]?[a-zA-Z]+[-]?[a-zA-Z0-9]+"
match =re.search(pattern, email_address)
name = match.group(1)

if match:
  print("Email address is valid")
else:
  print("Please enter valid email address")

matches = re.findall(bucket_pattern, name)
for m in matches:
  bucket_name = m.replace(".", "").replace("-", "")

print("Bucket folder name is "+bucket_name)

