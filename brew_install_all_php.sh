#!/usr/bin/env bash
# https://github.com/uzulla/link_brew_and_phpenv

brew search php| cat | grep -e "^php@[0-9]" -e "^php$" |xargs -L 1 brew install

