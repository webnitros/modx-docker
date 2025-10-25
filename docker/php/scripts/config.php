<?php

###################################
###################################
###### Замена файлов конфигурации на env переменные
###################################
###################################

$sourceFilePath = '/var/www/html/core/config/config.inc.php';
$content = file_get_contents($sourceFilePath);
if (strripos($content, 'getenv') === false) {
    $content = str_replace('$database_server = \'mysql\';', '$database_server = getenv(\'MYSQL_HOST\');', $content);
    $content = str_replace('$database_user = \'modx\';', '$database_user = getenv(\'MYSQL_USER\');', $content);
    $content = str_replace('$database_password = \'764cae68135c29cb\';', '$database_password = getenv(\'MYSQL_PASSWORD\');', $content);
    $content = str_replace('$dbase = \'modx\';', '$dbase = getenv(\'MYSQL_DATABASE\');', $content);
    $content = str_replace('$table_prefix = \'modx_\';', '$table_prefix = getenv(\'MYSQL_PREFIX\');', $content);
    $content = str_replace('$database_dsn = \'mysql:host=mysql;dbname=modx;charset=utf8\';', '$database_dsn = \'mysql:host=\'.getenv(\'MYSQL_HOST\').\';dbname=\'.getenv(\'MYSQL_DATABASE\').\';charset=utf8\';', $content);
    file_put_contents($sourceFilePath, $content);
}

