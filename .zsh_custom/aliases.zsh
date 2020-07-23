# Terminal Functionality
alias "t=tree -I '.git|.tox|venv' -C --dirsfirst"
#alias ls="gls --color=auto --group-directories-first -p"

# Python
alias ve="source venv/bin/activate"
alias de="deactivate"
alias ipy="cd ~/scripts/misc; source venv/bin/activate; ipython notebook --no-mathjax --port=8098 --ip=0.0.0.0"
alias jlab="cd ~/scripts/misc; source venv/bin/activate; jupyter lab"
alias new='python3.8 -m venv venv && source venv/bin/activate && pip install -e .'
alias p="coverage run -m py.test --cov-report term-missing -vv --color=yes &&  coverage report --rcfile=.coveragerc"
alias s="flake8 setup.py src/ tests/ && echo 'Flake8 succesful' && black setup.py src/ tests/ --check"

# Connectivity
alias dev_proxy='http_proxy=http://bproxy.tdmz1.bloomberg.com:80 https_proxy=http://bproxy.tdmz1.bloomberg.com:80'
alias ext_proxy='http_proxy=http://proxy.bloomberg.com:81 https_proxy=http://proxy.bloomberg.com:81'

# Personal
alias dotfiles='git --git-dir=/Users/alessandro/.dotfiles/ --work-tree=/Users/alessandro'
alias misc="cd ~/scripts/misc"

# Scripts
alias bounce="source /bb/dtjiraEngDev/afranceschin/jira8-jflo/dev-instance-start.sh"
alias csrepo="source /Users/alessandro/libraries/shell_scripts/csrepo.sh"
