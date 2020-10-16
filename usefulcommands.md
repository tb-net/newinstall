# ssh
* keycreation\
`ssh-keygen -t rsa -b 4096 -C comment_here`
* launch\
`eval $(ssh-agent)` or `ssh-agent /bin/sh` (manjaro)

# git
* setup\
`git init`\
`git remote add origin git@github.com:tb-net/newproject.git`
* usage\
`git add myfile`\
`git commit -m "mycomment"`\
`git push -u origin master`
