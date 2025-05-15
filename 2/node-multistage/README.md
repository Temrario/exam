# Node App with Docker (Multi-stage)

## Запуск у development:
```
docker build -t node-app-dev --target=development .
docker run -p 3000:3000 node-app-dev
```

## Запуск у production:
```
docker build -t node-app-prod --target=production .
docker run -p 3000:3000 node-app-prod
```

В обох випадках сторінка буде доступна на http://localhost:3000
