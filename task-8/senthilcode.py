import json, requests, os

url='https://api.github.com/users/amfoss/repos?page=1&per_page=100'
response = requests.get(url)
repository = response.json()

for i in range(33):
	os.system('perceval git --json-line https://github.com/amfoss/'+ repository[i]["name"] + '>>task-8.json')

