# python {{{1

alias bpy=bpython
alias ipy=ipython
alias nt=nosetests
alias py=python
alias pudb='python -m pudb.run'
alias web='python -m SimpleHTTPServer'
alias pypath='python -c "import sys, pprint; pprint.pprint(sys.path)"'

# virtualenv {{{1
alias workon='source venv/bin/activate'
alias workoff=deactivate

# pip
alias pipi='pip install'
alias pipx='pip uninstall'
alias pip-remove-all='pip freeze | xargs pip uninstall -y'
alias pip-freeze-req='pip freeze > requirements.txt'
