#!/usr/bin/env bash

brew -h > /dev/null 2>&1 || exit 1
phpenv -h > /dev/null 2>&1 || exit 1

PHPENV_VERSIONS_DIR_PATH=`which phpenv | sed "s/\/bin\/phpenv//g"`/versions/
CELLER_DIR=`brew --prefix`/Cellar/

for php_base_path in `brew list |cat |grep -e "^php@[0-9]" -e "^php$" | xargs -I {} -L 1 bash -c "cd $CELLER_DIR{} && ls -d $CELLER_DIR{}/*"` ;do
    short_name=`echo ${php_base_path} | sed -r 's/.*(php[@0-9\._]*).*/\1/g'`
    echo ${short_name}
    ln -sf ${php_base_path} ${PHPENV_VERSIONS_DIR_PATH}/${short_name}
done

phpenv rehash

