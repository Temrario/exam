FROM python:3.11-alpine

RUN python -m venv /opt/venv \
    && /opt/venv/bin/pip install --upgrade pip \
    && adduser -D appuser

ENV PATH="/opt/venv/bin:$PATH"

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY main.py .

USER appuser
CMD ["python", "main.py"]
