#!/usr/bin/env bash

brew search php| cat | grep -e "^php@[0-9]" -e "^php$" |xargs -L 1 brew install

