# Frontend build stage
FROM node:20-alpine AS frontend-build
WORKDIR /app/frontend
COPY frontend/ .
RUN chmod +x build.sh && ./build.sh

# Backend stage for development
FROM node:20-alpine AS development
WORKDIR /app/backend
COPY backend/ .
RUN npm install

CMD ["npm", "run", "dev"]

# Backend stage for production
FROM node:20-alpine AS production
WORKDIR /app/backend
COPY backend/ .
COPY --from=frontend-build /app/frontend/index.html ./public/index.html
RUN npm install --omit=dev

CMD ["npm", "start"]
