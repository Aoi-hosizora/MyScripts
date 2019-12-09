@echo off
:: https://www.cnblogs.com/bellkosmos/p/5923439.html
:: git log --graph --pretty=oneline --decorate --abbrev-commit
:: git log --graph --decorate --date=format:"%Y-%m-%d %H:%M:%S" --pretty=format:"%C(yellow)%h%C(auto)%d %C(white)%s %C(cyan)[%an] %C(red)<%cd>"

git log --graph --decorate --date=format:"%%Y-%%m-%%d %%H:%%M:%%S" --pretty=format:"%%C(yellow)%%h%%C(auto)%%d %%C(white)%%s %%C(cyan)[%%an] %%C(red)<%%cd>"

@echo on