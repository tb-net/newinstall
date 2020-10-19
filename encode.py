# github.com/tb-net
# encode uploaded scripts

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
    if data[:19]==word:
        encoded_file = key.encrypt(bytes(data,'utf-8'))
        with open(f,'wb') as x: x.write(encoded_file)

