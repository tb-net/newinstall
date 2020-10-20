# github.com/tb-net
# Encode uploaded scripts

import os
from cryptography.fernet import Fernet

word = '# github.com/tb-net'
ignorelist = ['encode.py','decode.py']

key_path = str(os.getenv('HOME')) + '/scripts/.cred_encode'
with open(key_path,'r') as f: key = Fernet(f.read())
F = os.listdir(os.getcwd())
F = [x for x in F if x[-2:]=='py' and x not in ignorelist]

for f in F:
    with open(f,'r') as x: data = x.read()
    if data[:19]!=word:
        with open(f,'rb') as x: data = x.read()
        decoded_file = key.decrypt(data)
        with open(f,'wb') as x: x.write(decoded_file)
            

