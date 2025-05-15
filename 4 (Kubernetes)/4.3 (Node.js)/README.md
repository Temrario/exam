# Kubernetes 4.3

Це шаблон для Kubernetes/4.3.

✅ Чи виконує файл deployment.yaml завдання 4.3?
Так, виконує.
Файл містить два об'єкти:

ConfigMap app-config — з параметром NODE_ENV=production

Deployment nodeapp — який запускає Node.js-додаток із використанням цієї конфігурації.

⚙️ Як запустити цей файл?

kubectl apply -f deployment.yaml
Перевірити створення:


kubectl get pods
kubectl describe pod <назва-пода>
🛠 Як це працює?
ConfigMap створює параметри конфігурації:

yaml

data:
  NODE_ENV: production
Deployment:

запускає контейнер з образом node:20

використовує envFrom.configMapRef, щоб зробити NODE_ENV доступним у середовищі контейнера

запускає команду node server.js

Це дозволяє відокремити конфігурацію від коду, що є хорошою практикою в Kubernetes.

📌 Висновок
Маніфести правильні.

Завдання 4.3 виконано повністю.

Щоб запустити — достатньо застосувати файл через kubectl apply -f deployment.yaml.