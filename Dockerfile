FROM node:18-alpine as BUILD
RUN mkdir -p /app
WORKDIR /app
COPY package*.json .
RUN npm install --legacy-peer-deps
COPY . .
RUN npm run build



FROM nginx:latest
COPY --from=BUILD /app/dist/admin-dashboard /usr/share/nginx/html
EXPOSE 80
