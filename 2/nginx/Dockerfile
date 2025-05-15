
# Build stage
FROM node:20-alpine as build-stage

WORKDIR /app
COPY frontend/ .

# Встановити залежності та створити білд (імітація)
RUN mkdir -p build && echo "<html><body><h1>React build success</h1></body></html>" > build/index.html

# NGINX stage
FROM nginx:alpine as production-stage

COPY --from=build-stage /app/build /usr/share/nginx/html
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
