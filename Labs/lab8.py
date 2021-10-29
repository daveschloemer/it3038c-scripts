import requests, re
from bs4 import BeautifulSoup

data = requests.get("https://www.microcenter.com/product/633428/intel-core-i9-11900-rocket-lake-35ghz-eight-core-lga-1200-boxed-processor").content
soup = BeautifulSoup(data, 'html.parser')
details = soup.find("h1")
for d in details:
    title = d.find("span")
    if title is not None and title != -1:
        thisspan = title

print("The name of the Product is: " + thisspan.get('data-name'))
print("The price of the product is: " + thisspan.get('data-price'))