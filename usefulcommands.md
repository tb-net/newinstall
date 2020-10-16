# ssh
* key creation\
`ssh-keygen -t rsa -b 4096 -C comment_here`
* launch\
`eval $(ssh-agent)` or `ssh-agent /bin/sh` (manjaro)
* list\
`ssh-add -l`
* remove\
`ssd-add -d /pathtoprivate'

# git
* setup\
`git init`\
`git remote add origin git@github.com:tb-net/newproject.git`\
`ssh -T git@github.com`
* usage\
`git add myfile`\
`git commit -m "mycomment"`\
`git push -u origin master`
