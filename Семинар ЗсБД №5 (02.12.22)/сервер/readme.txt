Установить docker
	https://docs.docker.com/engine/install/
Установить docker-compose
	https://docs.docker.com/compose/install/

Переходим в терминале нужную папку где у нас находится файл docker-compose.yml,
по умолчанию, если открыть терминал, то он запускается в корневой папке
пользователя, в моем случае это /home/igor, полный путь до папки с сервером
у меня это /home/igor/courses/web, значит чтобы попасть туда относительно
/home/igor я должен набрать в терминале:

cd courses/web/

чтобы проверить, что мы там где надо выполняем в терминале

ls -la

и если в списке есть docker-compose.yml, то мы все сделали правильно, в моем
случае у меня получился вот такой вывод:
drwxrwxrwx 4 igor igor 4096 мая 26 11:08 .
drwxrwxr-x 5 igor igor 4096 мая 17 19:57 ..
drwxrwxrwx 4 igor igor 4096 мая 26 11:25 app
-rw-rw-r-- 1 igor igor 1193 мая 26 10:38 catalog.xml
-rw-rw-r-- 1 igor igor   90 мая 26 11:09 check2.json
-rwxrwxrwx 1 igor igor  536 мая 19 13:37 db.sql
drwxrwxrwx 5 igor igor 4096 мая 19 13:12 docker
-rwxrwxrwx 1 igor igor  943 мая 19 13:15 docker-compose.yml
-rwxrwxrwx 1 igor igor  131 мая 26 10:28 req.http
-rw-rw-r-- 1 igor igor  533 мая 26 10:38 test.html
-rw-rw-r-- 1 igor igor  718 мая 26 10:42 user.json

Теперь чтобы запустить наш сервер набираем:

sudo docker-compose up -d

Для того чтобы остановить сервер:

sudo docker-compose down