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

* После запуска вы можете проверить работу сайта

* Доступ к сайту по адресу [http://localhost/](http://localhost/)
* Доступ к adminer [http://localhost:8080/](http://localhost:8080/) 
    
    - Сервер: db
    - Имя пользователя: root # По умолчанию
    - Пароль: root # По умолчанию
    - База данных: laravel # По умолчанию

* Установка Laravel-AdminLTE
```
composer require jeroennoten/laravel-adminlte
php artisan adminlte:install
composer require laravel/ui
php artisan ui bootstrap --auth
php artisan adminlte:install --type=full --with=main_views
```

* Запуск продакшн
``` 
npm run build
```
