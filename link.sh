#!/usr/bin/env bash

ls -d `brew --prefix`/Cellar/php/* | xargs -I {} -L 1 ln -sf {} `which phpenv | sed "s/\/bin\/phpenv//g"`/brew && phpenv rehash


