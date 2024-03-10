# Laravel-Docker-Apache-PHP-MySQL

## Описание

Проект представляет собой шаблон для создания проекта на Laravel с использованием Docker.

## Проект состоит из:

* PHP v8.2.16
* Apache 2.4
* MySQL 8.0
* Adminer
* Laravel v10.47.0

**1**. Установка в текущую папку с очисткой git папок 
```
git clone https://github.com/wpdew-com/docker_for_codeigniter .; rd .gitignore; rd readme.md; rm -r -fo .git
```

**2**. Создайте контейнеры и запустите их.

* Выполните команду для старта проэкта:

```shell script
docker-compose build
```

Создание контейнеров займёт некоторое время. Дождитесь окончания процесса. Ваш компьютер не должен во время данного процесса потерять доступ в интернет.  
<hr/>

* Запуск контейнера для работы
```shell script
docker-compose up -d
```
* Остановка контейнера
```shell script
docker-compose down
```

* После запуска контейнера, вам нужно выполнить команду для установки зависимостей:

```shell script
cd src
composer install
composer update
php artisan key:generate
```


* Доступ к сайту по адресу [http://localhost/](http://localhost/)
* Доступ к adminer [http://localhost:8080/](http://localhost:8080/) 
    
    - Сервер: db
    - Имя пользователя: root # По умолчанию
    - Пароль: root # По умолчанию
    - База данных: app # По умолчанию
