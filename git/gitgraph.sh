git log --graph --decorate --date=format:'%Y-%m-%d %H:%M:%S' --pretty=format:'%C(yellow)%h%C(auto)%d %C(white)%s %C(cyan)[%an] %C(red)<%cd>'
# chmod +x gitgraph.sh
# use: gitgraph.sh

# Or alias
# git config --global alias.graph "log --graph --decorate --date=format:'%Y-%m-%d %H:%M:%S' --pretty=format:'%C(yellow)%h%C(auto)%d %C(white)%s %C(cyan)[%an] %C(red)<%cd>'"
