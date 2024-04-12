<?php


$sourceVersion = '/var/www/html/core/docs/version.inc.php';


if (file_exists($sourceVersion)) {
    $v = include '/var/www/html/core/docs/version.inc.php';
} else {
    echo "Файл {$sourceVersion} не найден\n";
    exit(1);
}


if ($v['version'] >= 3) {


    $str = @$argv[1];
    $version = null;
    if (!empty($str)) {
        if (strripos($str, '--version=') !== false) {
            $data = explode('=', $str);
            if (!empty($data[1])) {
                $version = $data[1];
            }
        }
    }


    if (!$version) {
        echo "Аргументы командной строки не была переданы версия modx.\n";
        exit(1);
    }


    ########################
    ########################
    ########################
    ########################

    $targetFileComposer = '/var/www/html/composer.json';

    if (!file_exists($targetFileComposer)) {


        $content = file_get_contents('https://raw.githubusercontent.com/modxcms/revolution/v' . $version . '/composer.json');
        if ($content === false) {
            echo "Ошибка при загрузке файла composer.json\n";
            exit;
        }

        $data = json_decode($content, true);
        if (!is_array($data)) {
            echo "Ошибка при декодировании файла composer.json\n";
            exit;
        }

        if (!empty($data['config'])) {
            unset($data['config']);
        }

# сохранить файлв директории /var/www/html/composer.json
        if (file_put_contents('/var/www/html/composer.json', json_encode($data, JSON_PRETTY_PRINT))) {
            echo "Файл composer.json успешно сохранен\n";
        } else {
            echo "Ошибка при сохранении файла composer.json\n";
            exit;
        }

    }

    ########################
    ########################
    ########################
    ########################

    // Путь к исходному файлу XML
    $targetFilePath = '/var/www/html/core/vendor/autoload.php';


    // если нету диреткории создать её
    if (!file_exists(dirname($targetFilePath))) {
        mkdir(dirname($targetFilePath), 0777, true);
    }

    $content = "<?php include_once dirname(__FILE__, 3) . '/vendor/autoload.php'; ?>";

    // Сохраняем новый файле autoload.php в директории /var/www/html/core/vendor/autoload.php
    if (file_exists($targetFilePath)) {
        unlink($targetFilePath);
    }

    if (file_put_contents($targetFilePath, $content) === false) {
        echo "Ошибка при сохранении файла autoload.php в " . $targetFilePath . "\n";
    } else {
        echo "Файл {$targetFilePath} успешно сохранен\n";
    }


    ########################################
    ########################################
    ###### В это месте из директории vendor подключается плагин, по этому заменяем его на путь к директории core
    ########################################
    ########################################
    $sourceFileModSmary = '/var/www/html/core/src/Revolution/Smarty/modSmarty.php';
    if (file_exists($targetFilePath)) {
        $content = file_get_contents($sourceFileModSmary);
        if (strripos($content, 'dirname($this->modx->getOption(\'core_path\')') === false) {
            $content = str_replace(
                '$this->modx->getOption(\'core_path\') . \'vendor/smarty/smarty/libs/plugins\',',
                'dirname($this->modx->getOption(\'core_path\'),1) . \'/vendor/smarty/smarty/libs/plugins\',',
                $content
            );
            if (file_put_contents($sourceFileModSmary, $content)) {
                echo "Файл modSmarty.php успешно сохранен \n";
            } else {
                echo "Ошибка при сохранении файла modSmarty.php \n";
            }
        }
    } else {
        echo "Файл {$sourceFileModSmary} не найден\n";
    }

} else {

    #############
    ### Composer
    #############
    $sourceFileCompose = '/var/www/html/docker/app/scripts/composer.example.json';
    $targetFileCompose = '/var/www/html/composer.json';
    if (!file_exists($targetFileCompose)) {
        if (file_exists($sourceFileCompose)) {
            copy($sourceFileCompose, $targetFileCompose);
        } else {
            echo "Файл {$sourceFileCompose} не найден\n";
        }
    }


    #############
    ### config.core.php
    #############
    file_put_contents('/var/www/html/public/config.core.php', "<?php include_once dirname(__FILE__, 2) . '/bootstrap.php';");
    file_put_contents('/var/www/html/public/manager/config.core.php', "<?php include_once dirname(__FILE__, 3) . '/bootstrap.php';");
    file_put_contents('/var/www/html/public/connectors/config.core.php', "<?php include_once dirname(__FILE__, 3) . '/bootstrap.php';");

    ####################################
    ####################################
    ### Bootstrap

    $targetFileBootstrap = '/var/www/html/bootstrap.php';
    if (!file_exists($targetFileBootstrap)) {

        $bootstrapContent = "<?php\n";
        $bootstrapContent .= "use Symfony\Component\Dotenv\Dotenv;\n";
        $bootstrapContent .= "define('BASE_DIR', dirname(__FILE__) . '/');\n";
        $bootstrapContent .= "require_once BASE_DIR . 'vendor/autoload.php';\n";

        $bootstrapContent .= "(new Dotenv(true))->loadEnv(BASE_DIR . '.env');\n";
        $bootstrapContent .= "\n";
        $bootstrapContent .= "if (!defined('MODX_CONFIG_KEY')) {\n";
        $bootstrapContent .= "    define('MODX_CONFIG_KEY', 'config');\n";
        $bootstrapContent .= "}\n";
        $bootstrapContent .= "if (!defined('MODX_CORE_PATH')) {\n";
        $bootstrapContent .= "    define('MODX_CORE_PATH', BASE_DIR . 'core/');\n";
        $bootstrapContent .= "}\n";

        if (file_put_contents($targetFileBootstrap, $bootstrapContent) === false) {
            echo "Ошибка при сохранении файла bootstrap.php в " . $targetFileBootstrap . "\n";
        } else {
            echo "Файл {$targetFileBootstrap} успешно сохранен\n";
        }
    }

}
