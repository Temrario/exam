# prostgres
## 📌 Суть завдання:
Створити Dockerfile, який:

Базується на офіційному образі postgres

Копіює SQL-скрипт (init.sql) у папку /docker-entrypoint-initdb.d/

Автоматично виконує цей скрипт при першому запуску контейнера
## Запуск  
```

1. Зберіть Docker-образ

docker build -t custom-postgres .

2. Запустіть контейнер з інтерфейсом bash

docker run -d \
  --name my-postgres-container \
  -e POSTGRES_PASSWORD=secretpassword \
  -p 5432:5432 \
  custom-postgres

3.Підключіться до PostgreSQL всередині контейнера

docker exec -it my-postgres-container psql -U postgres

4. Перевірте наявність таблиці

\dt
SELECT * FROM example;

```

