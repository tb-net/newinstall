Collection of scripts for new installations of ubuntu on local or remote machines.

# Remote server

## copy essential files over
`scp ~/scripts/.cred_remote root@ipaddress:/root`
`scp ~/scripts/newinstall/create_user.sh root@ipaddress:/root`
`scp ~/scripts/newinstall/install_remote.sh root@ipaddress:/root`

## ssh in
`cd /root`
`./install_remote.sh mysuser`
`su myuser`
`cd /home/myuser`
`mkvirtualenv myvenv`
`workon myvenv`
`./scripts/newinstall/python/install_pypack.sh`

