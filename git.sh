# git cheetsheet

#################### ssh config ####################
ssh-keygen -t rsa -b 4096 -C "your_email@youremail.com" # can generate multiple ssh key when later designating path

# specify an ssh key for different git server
# in ~/.ssh/config
Host gitserv
    Hostname remote.server.com
    IdentityFile ~/.ssh/id_rsa.github
    IdentitiesOnly yes 

# specify different ssh key for different users in one git server
https://gist.github.com/jexchan/2351996

#################### git config ####################
# in a repo
$ git config user.name "***"
$ git config user.email "***@***.com" 

# global config
$ git config --global user.name "***"
$ git config --global user.email "***@***.com" 

#################### git delete ####################
git clean -fd   # delete untracked files
git branch -D your_branch   # delete local branch

#################### git revert ####################
git reset --soft HEAD^  # uncommit and reserve code
git reset HEAD <file>... # unadd file

#################### git commit ####################
git commit --amend  # supplementary commit

#################### gerrit ####################
git push origin HEAD:refs/for/your_branch # first time push need 