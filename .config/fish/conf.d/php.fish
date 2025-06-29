# PHP specific aliases

alias phpunit='vendor/bin/phpunit'
alias phps='php -S localhost:8000'
alias compi='composer install'
alias compu='composer update'

alias phpunit-report-runtime="phpunit --log-json php://stdout \
  | awk '\$NF ~ '/,/' && \$1 ~ /\"(test|time)\"/' \
  | cut -d: -f2- \
  | sed \"N;s/\n/--/\"  \
  | sed \"s/,//\"   \
  | awk 'BEGIN{FS=\"--\"}; {print \$2 \$1}' | sort -r \
  | head -n 5"

# Magento2
alias m2='php bin/magento'
alias m2up='m2 setup:upgrade && m2 setup:di:compile && m2 cache:flush'
alias m2cf='m2 cache:flush'
alias m2cc='m2 cache:clean'
alias m2ir="m2 index:reindex"
alias m2static='m2 setup:static-content:deploy -f && m2 setup:static-content:deploy -f --area="adminhtml" && m2 c:f'
alias n98-magerun2='./n98-magerun2.phar'
