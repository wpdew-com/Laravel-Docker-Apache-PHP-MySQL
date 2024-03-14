# Laravel-Docker-Apache-PHP-MySQL

## Описание

Проект представляет собой шаблон для локальной разработки проекта на Laravel с использованием Docker.
Для работы проекта вам нужно установить Docker и Docker Compose. 


## Проект состоит из:

* PHP v8.2.16
* Apache 2.4
* MySQL 8.0
* Adminer
* Laravel v11.0.5

**1**. Установка в текущую папку с очисткой git папок 
```
git clone https://github.com/wpdew-com/Laravel-Docker-Apache-PHP-MySQL .; rd .gitignore; rd readme.md; rm -r -fo .git
```

**2**. Создайте контейнеры и запустите их.

* Выполните команду для старта проэкта:

```shell script
make build
```

Создание контейнеров займёт некоторое время. Дождитесь окончания процесса. Ваш компьютер не должен во время данного процесса потерять доступ в интернет.  
<hr/>

* Запуск контейнера для работы
```shell script
make up
```
* Остановка контейнера
```shell script
make stop
```

* Перезапуск контейнера
```shell script
make restart
```

* После запуска контейнера, вам нужно выполнить команду для установки зависимостей:

```shell script
cd src
composer install
composer update
cp .env.example .env
php artisan key:generate
```
* После выполнения команды, вам нужно внести изменения в файл .env

```shell script
DB_CONNECTION=mysql
DB_HOST=db
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=root
DB_PASSWORD=root
```

* После изменения файла .env, вам нужно выполнить команду для создания таблиц в базе данных:

```shell script
php artisan migrate
```
* После выполнения команды, вам нужно выполнить команду для заполнения таблицы данными:

```shell script
php artisan db:seed
```
* После выполнения команды вы можете проверить работу сайта

* Доступ к сайту по адресу [http://localhost/](http://localhost/)
* Доступ к adminer [http://locclear
alhost:8080/](http://localhost:8080/) 
    
    - Сервер: db
    - Имя пользователя: root # По умолчанию
    - Пароль: root # По умолчанию
    - База данных: laravel # По умолчанию
