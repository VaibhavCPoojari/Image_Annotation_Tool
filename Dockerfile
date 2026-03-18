FROM node:20-alpine AS builder
WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .
RUN npm run build

FROM nginx:1.27-alpine
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY docker-start.sh /docker-start.sh
RUN chmod +x /docker-start.sh
COPY --from=builder /app/dist /usr/share/nginx/html

EXPOSE 80
CMD ["/docker-start.sh"]
