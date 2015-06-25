#!/usr/bin/env bash

function heroku_install() {
	heroku plugins:install "http://github.com/$1.git"
}

# Plugins
heroku_install 'tpope/heroku-fucking-console'
heroku_install 'tpope/heroku-pgbackups-pull'
heroku_install 'heroku/heroku-accounts'
heroku_install 'heroku/heroku-pg-extras'
