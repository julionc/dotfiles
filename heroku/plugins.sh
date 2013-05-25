#!/usr/bin/env bash

function heroku_install() {
	heroku plugins:install "git://github.com/$1.git"
}

# Plugins
heroku_install 'tpope/heroku-fucking-console'
heroku_install 'tpope/heroku-pgbackups-pull'