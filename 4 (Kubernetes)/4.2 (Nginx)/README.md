# Kubernetes 4.2

Це шаблон для Kubernetes/4.2.

✅ Чи виконує файл nginx-nodeport.yaml завдання 4.2?
Так, виконує.
Цей файл:

Створює Pod з Nginx

Створює Service типу NodePort, що відкриває доступ до Nginx ззовні через порт 30036

⚙️ Як запустити цей файл у Minikube?
Запустіть Minikube (якщо ще не запущено):

minikube start
Застосуйте маніфест:

kubectl apply -f nginx-nodeport.yaml
Отримайте IP Minikube:

minikube ip
Відкрийте у браузері або curl:

cpp

http://<minikube-ip>:30036
🛠 Як це працює?
Pod запускає контейнер nginx, який слухає порт 80.

Service NodePort відкриває доступ до пода ззовні через вузловий порт 30036.

В Minikube цей порт доступний через IP, який можна отримати через minikube ip.

📌 Висновок
Файл коректний.

Завдання 4.2 виконано повністю.

Дає можливість відкрити вебсервер Nginx з браузера за IP Minikube і портом 30036.