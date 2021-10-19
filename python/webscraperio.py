import requests, re
from bs4 import BeautifulSoup

r = request.get("https://webscraper.io/test-sites/e-commerce/allinone/phones")
soup = BeautifulSoup(r, "lxml")
tags = soup.finaAll("div", {"class":re.compile('(ratings')})
for p in tags:
    a = div.findAll("p", {"class":"pull-right"})
    print(a[0].string)




#tags = soup.find_all("a", {"href":re.compile('[<>#%|\{\}!\\^~\[\]`/]')})
#for a in tags:
 #   print(a.get('href'))