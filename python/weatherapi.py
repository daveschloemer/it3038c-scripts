import requests
import json

print('Please enter your zip code:')
zip = input()

r = requests.get('https://api.openweathermap.org/data/2.5/weather?zip=%s,us&appid=615add43fc6229382c76b7b3c65fd97c' % zip)
data = r.json()

#print(type(data['weather'][0]['description']))
print("The weather in %s is %s" % ( zip, data['weather'][0]['description']))