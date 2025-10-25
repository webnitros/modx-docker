<?php

// Путь к исходному файлу XML
$sourceFilePath = '/var/www/html/config.dist.xml';

// Путь для сохранения обновленного файла XML
$targetFilePath = '/var/www/html/config.xml';

if (file_exists($targetFilePath)) {
    unlink($targetFilePath);
}
// Проверяем, существует ли исходный файл XML
if (!file_exists($sourceFilePath)) {
    die("Исходный файл XML не найден.");
}

// Загружаем содержимое исходного файла XML
$xmlString = file_get_contents($sourceFilePath);

// Преобразование XML строки в объект SimpleXMLElement
$xml = simplexml_load_string($xmlString);

// Функция для замены значений из окружения
function replaceEnvValues($value)
{
    $envValue = getenv($value);
    return !empty($envValue) ? $envValue : $value;
}

// Проход по всем элементам XML и замена значений из окружения
foreach ($xml as $key => $value) {
    $xml->$key = replaceEnvValues((string)$value);
}

// Сохраняем обновленную XML в новый файл
if (file_put_contents($targetFilePath, $xml->asXML()) === false) {
    echo "Ошибка при сохранении файла XML в " . $targetFilePath;
}

