import requests
import json
import os

date=input("Enter date in YYYY-MM-DD format : ") 
parameters={"earth_date" : date, "api_key" : "cx8mG10wwaXIVsEFxV0UYkNRhRDcG8E4lHZpZnLd"}

response=requests.get("https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos", params=parameters)

data=response.json()

#command1='mkdir ~/Desktop/Nasa-Fotos'
#os.system(command1)
#os.chdir('/Desktop/Nasa-Fotos')

count=0
for i in data["photos"]:
	if(i["id"]):
		count+=1

print(count, "photos found. Do you want everything to get downloaded in ur current working directory ? (Y/N)")
ask=input()

if ask=='y' or ask=='Y':
	for i in data["photos"]:
			command2='curl ' + str(i["img_src"]) + ' -o ' + str(i["id"]) + '.jpg'
			os.system(command2)
