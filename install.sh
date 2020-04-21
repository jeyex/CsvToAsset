#!/usr/bin/env bash

set -ex


rm -rfv var/cache/* var/log/*
docker run -ti -u www-data --rm \
    -v $(pwd):/srv/pim -v ~/.composer:/var/www.composer -v ~/.ssh:/var/www/.ssh -w /srv/pim \
    akeneo/pim-php-dev:4.0 php -d memory_limit=4G /usr/local/bin/composer install
