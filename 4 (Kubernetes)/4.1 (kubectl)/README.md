# Kubernetes 4.1

Це шаблон для Kubernetes/4.1.

Так, цей файл вже підтримує автоматичний Rolling Update при зміні Docker-образу, оскільки це типова поведінка Kubernetes Deployment. Зміна поля image (наприклад, myapp:v2) автоматично запускає процес rolling update, під час якого нові поди створюються, а старі поступово видаляються без простою.

⚙️ Як запустити файл deployment.yaml?
Застосуйте конфігурацію:

bash
Копировать
Редактировать
kubectl apply -f deployment.yaml
Перевірте статус оновлення:

bash
Копировать
Редактировать
kubectl rollout status deployment/myapp



🛠 Як це працює?
Deployment контролює поди і репліки.

При зміні образу (наприклад, image: myapp:latest → myapp:v2) або іншої частини шаблону пода, Kubernetes:

створює нові поди з новим образом,

поступово видаляє старі (Rolling Update),

слідкує, щоб кількість доступних подів не впала нижче maxUnavailable (за замовчуванням 1).

Команда kubectl rollout status показує прогрес оновлення.

Примітка: Якщо використовується тег latest, Kubernetes може не помітити зміну образу. Рекомендується тегувати образи з версією (myapp:v1, myapp:v2) або використовувати imagePullPolicy: Always.