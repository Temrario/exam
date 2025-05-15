# alpine
## 📌 Суть завдання:
Створити Dockerfile на базі python:3.11-alpine, який:

Створює віртуальне середовище Python у /opt/venv

Встановлює залежності з requirements.txt

Копіює файл main.py до контейнера

Виконує Python-додаток від імені непривілейованого користувача (non-root)

Це сприяє кращій безпеці, меншому розміру образу та ізоляції додатку.

## Запуск  
```

2. Зберіть Docker-образ
docker build -t python-nonroot-app .
3. docker run --rm python-nonroot-app

```

