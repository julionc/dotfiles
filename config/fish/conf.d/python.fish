# python
abbr -a bpy bpython
abbr -a ipy ipython
abbr -a nt nosetests
abbr -a py python
abbr -a pudb 'python -m pudb.run'
abbr -a pypath 'python -c "import sys, pprint; pprint.pprint(sys.path)"'

# virtualenv
abbr -a workon 'source venv/bin/activate'
abbr -a workoff deactivate

# pip
abbr -a pipi 'pip install'
abbr -a pipx 'pip uninstall'
abbr -a pip-remove-all 'pip freeze | xargs pip uninstall -y'
abbr -a pip-freeze-req 'pip freeze > requirements.txt'