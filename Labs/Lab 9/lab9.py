import requests
import json

r = requests.get('http://localhost:3000')
data = r.json()

for name in data:
    print(data[0]['name'], "is", data[0]['color'])