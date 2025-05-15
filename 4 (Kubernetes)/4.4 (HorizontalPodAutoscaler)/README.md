# Kubernetes 4.4

Це шаблон для Kubernetes/4.4.

✅ Чи виконує файл hpa.yaml завдання 4.4?
Так, виконує.
Файл описує HorizontalPodAutoscaler (HPA), який автоматично масштабує кількість подів Deployment myapp залежно від CPU-навантаження.

⚙️ Як запустити у Minikube?
Запустіть Minikube:


minikube start
Увімкніть Metrics Server (обов’язково для HPA):


minikube addons enable metrics-server
Застосуйте HPA YAML:


kubectl apply -f hpa.yaml
Перевірте статус HPA:


kubectl get hpa
🛠 Як це працює?
HPA слідкує за середнім CPU-споживанням усіх подів Deployment myapp.

Якщо середнє навантаження > 50% — Kubernetes додає більше подів (до maxReplicas: 5).

Якщо навантаження падає < 50%, кількість подів зменшується (але не менше minReplicas: 1).

Потрібно, щоб поди мали CPU-ресурси в resources.requests, інакше метрика буде недоступна.

❗️ Важливо
Переконайтесь, що ваш Deployment має встановлений resources.requests.cpu, наприклад:

yaml

resources:
  requests:
    cpu: "100m"
Без цього HPA не зможе виміряти CPU-навантаження й не працюватиме як очікується.

📌 Висновок
Файл коректний, і він реалізує завдання 4.4.

Запуск у Minikube потребує metrics-server і налаштованих ресурсів CPU у подах.