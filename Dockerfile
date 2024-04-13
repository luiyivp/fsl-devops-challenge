FROM node:15 as builder

WORKDIR /app

COPY package.json .

RUN npm install --force

COPY . .

RUN npm run build

FROM nginx:1.25.4-alpine

WORKDIR /app

COPY --from=builder /app/build /usr/share/nginx/html

CMD [ "nginx", "-g", "daemon off;" ]