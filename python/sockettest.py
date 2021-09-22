import socket

hosts = ['www.uc.edu', 'www.apple.com', 'www.microsoft.com']

print('Working from host: ' + socket.getfqdn())

for h in hosts:
    print (h + ": " + socket.gethostbyname(h))
