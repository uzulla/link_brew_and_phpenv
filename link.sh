#!/usr/bin/env bash

brew -h 2&>1 > /dev/null || exit 1
phpenv -h 2&>1 > /dev/null || exit 1

ls -d `brew --prefix`/Cellar/php/* | xargs -I {} -L 1 ln -sf {} `which phpenv | sed "s/\/bin\/phpenv//g"`/versions/brew && phpenv rehash


