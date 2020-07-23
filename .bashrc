# NICE PROMPT (DISABLING AS USING BASH_PROMPT.SH)
# export PS1='\n\n\[\033[36m\]\u\[\033[32m\] (\h) \[\033[33;1m\]\w\[\033[35m\] $(git branch 2>/dev/null | grep '^*' | colrm 1 2)\n\[\033[m\]$ '

# BASH HISTORY
export HISTTIMEFORMAT="%h %d %H:%M:%S "
export HISTSIZE=10000
export HISTFILESIZE=10000

# BAS
export BAS_PROXY=bas-web-dev.bdns.bloomberg.com:10799

# GIT
git config --global alias.lg "log --pretty=format:'%Cred%h %Cgreen%ad%Creset %s %C(bold blue)<%an>%C(yellow)%d%Creset' --date=short"

# ALIAS
alias ve="source venv/bin/activate"
alias de="deactivate"
alias "t=tree -I '.git|.tox|venv' -C --dirsfirst"
alias bounce="source /bb/dtjiraEngDev/afranceschin/jira8-jflo/dev-instance-start.sh"
alias dotfiles='git --git-dir=/Users/alessandro/.dotfiles/ --work-tree=/Users/alessandro'
alias ipy="cd ~/scripts/misc; source venv/bin/activate; ipython notebook --no-mathjax --port=8098 --ip=0.0.0.0"
alias jlab="cd ~/scripts/misc; source venv/bin/activate; jupyter lab"
alias ls="gls --color=auto --group-directories-first -p"
alias misc="cd ~/scripts/misc"
alias new='python3.8 -m venv venv && source venv/bin/activate && pip install -e .'
alias p="coverage run -m py.test --cov-report term-missing -vv --color=yes &&  coverage report --rcfile=.coveragerc"
alias s="flake8 setup.py src/ tests/ && echo 'Flake8 succesful' && black setup.py src/ tests/ --check"
alias csrepo="source /Users/alessandro/libraries/shell_scripts/csrepo.sh"
alias dev_proxy='http_proxy=http://bproxy.tdmz1.bloomberg.com:80 https_proxy=http://bproxy.tdmz1.bloomberg.com:80'
alias ext_proxy='http_proxy=http://proxy.bloomberg.com:81 https_proxy=http://proxy.bloomberg.com:81'

# GIT AUTOCOMPLETE
source ~/libraries/git-completion.bash

# BASH PROMPT
source ~/libraries/bash_prompt.bash

# Append local python path to $PATH
export PATH=~/.local/bin:$PATH

# Vim colors
export TERM=xterm-256color

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
