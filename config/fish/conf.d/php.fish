# PHP
abbr -a phpunit 'vendor/bin/phpunit'
abbr -a phps 'php -S localhost:8000'
abbr -a compi 'composer install'
abbr -a compu 'composer update'

function phpunit-report-runtime
    phpunit --log-json php://stdout \
      | awk '$NF ~ /,/ && $1 ~ /"(test|time)"/' \
      | cut -d: -f2- \
      | sed "N;s/\n/--/" \
      | sed "s/,//" \
      | awk 'BEGIN{FS="--"}; {print $2 $1}' | sort -r \
      | head -n 5
end

# Magento2 — m2 se mantiene como alias porque m2up/m2static lo invocan internamente
alias m2='php bin/magento'
abbr -a m2up 'm2 setup:upgrade && m2 setup:di:compile && m2 cache:flush'
abbr -a m2cf 'm2 cache:flush'
abbr -a m2cc 'm2 cache:clean'
abbr -a m2ir 'm2 index:reindex'
abbr -a m2static 'm2 setup:static-content:deploy -f && m2 setup:static-content:deploy -f --area="adminhtml" && m2 c:f'
abbr -a n98-magerun2 './n98-magerun2.phar'