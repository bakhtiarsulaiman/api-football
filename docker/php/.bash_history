tail -f var/log/prod.log
tail -f var/log/dev.log
> var/log/dev.log; tail -f var/log/dev.log |grep -Fv "Deprecated" |grep mea: |jq
php /application/bin/console messenger:consume -vvv
php bin/console debug:router |grep reset_pass
php bin/console mea:memento:cron:run
php bin/console mea:contact:create
php bin/console mea:contact:promote
php bin/console sonata:page:update-core-routes --site=all
php bin/console doctrine:schema:update --force
php bin/console doctrine:schema:update --dump-sql
php bin/console doctrine:migrations:generate
php bin/console doctrine:migrations:diff
php bin/console doctrine:migrations:migrate
php bin/console doctrine:migrations:status
php bin/console fos:elastica:populate
php bin/console make:sonata:admin
php bin/console make:entity
service apache status
git status
git reset --hard
php bin/console messenger:consume async -vv
php bin/console debug:router |grep register
service nginx status
service varnish status
service cron status
git pull
php bin/console messenger:consume -vvv
rm -rf var/cache/*; rm -rf var/log/*
chmod -R 777 vendor/mea;  chmod -R 777 vendor/Mea;  chmod -R 777 config;  chmod -R 777 src;
chmod -R 777 var/cache;  chmod -R 777 var/log;
COMPOSER_DISCARD_CHANGES=true composer install --no-interaction --optimize-autoloader
COMPOSER_MEMORY_LIMIT=-1 composer update
composer install
COMPOSER_MEMORY_LIMIT=-1 composer update --optimize-autoloader
composer install --optimize-autoloader
php /application/bin/console messenger:consume async_priority_high
supervisorctl
yarn run encore production
yarn run encore dev --watch
