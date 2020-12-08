 # github.com/tb-net
 # pgp and sha checksum verification for veracrypt installation

import subprocess
from urllib.request import urlopen

deb_file = 'veracrypt-1.24-Update7-Ubuntu-20.04-amd64.deb'
sig_file = 'veracrypt-1.24-Update7-sha512sum.txt'
ct = 0

# get fingerprint from key
#cmd = 'gpg --fingerprint 0x680D16DE'
#s = subprocess.check_output(cmd, shell=True)
#s = s.decode('utf-8').split('\n')[1]
#s = s.strip().replace(' ','') 
#f_veracrypt = s

# get fingerprint from asc file
cmd = 'gpg VeraCrypt_PGP_public_key.asc 2>/dev/null'
s = subprocess.check_output(cmd, shell=True)
s = s.decode('utf-8').split('\n')[1]
f_veracrypt = s.strip()

print('Veracrypt verification ...')

# verify fingerprint against website
try:
    r = urlopen('https://www.veracrypt.fr/en/Downloads.html')
    r = r.read().decode('utf-8').split('\n')
    t = [x for x in r if 'PGP Public Key' in x][0]
    s1 = t.find('Fingerprint=')
    s2 = t.find('<', s1)
    f_webpage = t[s1+12:s2]
    if f_webpage==f_veracrypt:
        ct=ct+1
        print('Success - fingerprint from key matches web page ... importing')
        cmd = 'gpg --import VeraCrypt_PGP_public_key.asc'
        subprocess.call(cmd, shell=True)
    else:
        print('Failure - fingerprint from key does NOT match web page')
except:
    print('Failure - unable to retreive ginerprint from web page')

# verify deb file signature
cmd = 'gpg --verify ' + deb_file + '.sig ' + deb_file + ' 2>&1'
s = subprocess.check_output(cmd, shell=True)
s = s.decode('utf-8').split('\n')[2]
if 'Good signature' in s and 'VeraCrypt' in s:
    ct=ct+1
    print('Success - .deb file signature verified')
else:
    print('Failure - bad signature for .deb file')

# verify checksum file signature
cmd = 'gpg --verify ' + sig_file + '.sig ' + sig_file + ' 2>&1'
s = subprocess.check_output(cmd, shell=True)
s = s.decode('utf-8').split('\n')[2]
if 'Good signature' in s and 'VeraCrypt' in s:
    ct=ct+1
    print('Success - checksum file signature verified')
else:
    print('Failure - bad signature for checksum file')

# verify checksum
cmd = 'sha512sum < ' + deb_file
s = subprocess.check_output(cmd, shell=True)
s = s.decode('utf-8').replace('-','').strip()
checksum_deb = s
with open(sig_file,'r') as f: r = f.read()
r = r.split('\n')
r = [x for x in r if deb_file in x][0].split(' ')
checksum_file = r[0].lower()
if checksum_deb==checksum_file:
    ct=ct+1
    print('Success - .deb checksum matches')
else:
    print('Failure - .deb checksum does not match')

print(checksum_deb)
print(checksum_file)

if ct==4:
    print('All checks passed... installing')
    cmd = 'apt install -y ./' + deb_file
    subprocess.call(cmd, shell=True)
else:
    print('Check failure... aborting')
