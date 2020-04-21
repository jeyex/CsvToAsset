#!/usr/bin/env bash

set -ex

if [ -z "$1" ] && [ -z "$2" ]; then
 exit 0
fi

rm -rfv var/cache/* var/log/*
docker run -ti -u www-data --rm \
    -v $(pwd):/srv/pim -v ~/.composer:/var/www.composer -v ~/.ssh:/var/www/.ssh -w /srv/pim \
    akeneo/pim-php-dev:4.0 php -d memory_limit=4G bin/console -vvv app:import ${1} ${2}
