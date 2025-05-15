# bash, curl i git
## 📌 Суть завдання:
Створити Dockerfile на основі легкого образу Alpine Linux, який:

Встановлює bash, curl і git

Мінімізує розмір кінцевого образу

Не залишає кеш і зайві пакети після встановлення
## Запуск  
```

1. Зберіть Docker-образ

docker build -t minimal-bash-curl-git .

2. Запустіть контейнер з інтерфейсом bash

docker run -it minimal-bash-curl-git bash

3.Перевірка всередині контейнера

bash-5.2# git --version
bash-5.2# curl --version


```

