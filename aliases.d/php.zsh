# PHP specific aliases

alias phpunit='vendor/bin/phpunit'
alias phps='php -S localhost:8000'
alias composeri='composer install'
alias composeru='composer update'

alias phpunit-report-runtime="phpunit --log-json php://stdout \
  | awk '\$NF ~ '/,/' && \$1 ~ /\"(test|time)\"/' \
  | cut -d: -f2- \
  | sed \"N;s/\n/--/\"  \
  | sed \"s/,//\"   \
  | awk 'BEGIN{FS=\"--\"}; {print \$2 \$1}' | sort -r \
  | head -n 5"

alias magento='php bin/magento'
