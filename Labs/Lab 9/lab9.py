import requests
import json

r = requests.get('http://localhost:3000')
data = r.json()

for name in data:
    print(name['name'] + ' is' + name['color'])