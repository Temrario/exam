# nginx
## 📌 Суть завдання:
Використати multi-stage Docker збірку:

Перша стадія: збірка React-додатку на основі Node.js

Друга стадія: деплой у NGINX

Вебсервер повинен використовувати кастомну конфігурацію nginx.conf

Результат (build/) має віддаватись через NGINX

## Запуск  
```

1. Зберіть Docker-образ

docker build -t react-nginx-app .

2. Запустіть контейнер

docker run -d -p 8080:80 --name react-container react-nginx-app

3. в браузері
http://localhost:8080
```
