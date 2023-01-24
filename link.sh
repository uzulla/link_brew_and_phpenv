#!/usr/bin/env bash

ls -d `brew --prefix`/Cellar/php/* | xargs -I {} -L 1 ln -sf {} `phpenv which php | sed "s/\/bin\/php//g"` && phpenv rehash

