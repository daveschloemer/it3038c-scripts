import requests, re
from bs4 import BeautifulSoup

data = request.get("https://www.microcenter.com/product").content
soup = BeautifulSoup(data, 'html.parser')
details = soup.find("h1")
for d in details:
    title = d.find("span")
    if title is not None and title != -1:
        thisspan = title

print("Product %s has a price of %s" % thisspan.get('data-name'), thisspan.get('data-price'))