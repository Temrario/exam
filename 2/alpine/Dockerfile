# Базовий образ з Python 3.11 на Alpine Linux
FROM python:3.11-alpine

# Змінна для шляху до віртуального середовища
ENV VENV_PATH="/opt/venv"

# Встановлюємо необхідні пакети для створення користувача та віртуального середовища
RUN apk add --no-cache bash shadow && \
    python -m venv $VENV_PATH && \
    adduser -D appuser

# Додаємо файли до контейнера
WORKDIR /app
COPY requirements.txt main.py ./

# Активуємо venv та встановлюємо залежності
RUN source $VENV_PATH/bin/activate && \
    pip install --upgrade pip && \
    pip install -r requirements.txt

# Переключаємось на non-root користувача
USER appuser

# Виконуємо запуск додатку через venv
CMD ["/opt/venv/bin/python", "main.py"]