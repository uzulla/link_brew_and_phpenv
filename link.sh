#!/usr/bin/env bash

brew -h > /dev/null 2>&1 || exit 1
phpenv -h > /dev/null 2>&1 || exit 1

ls -d `brew --prefix`/Cellar/php/* | xargs -I {} -L 1 ln -sf {} `which phpenv | sed "s/\/bin\/phpenv//g"`/versions/brew && phpenv rehash


