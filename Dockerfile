FROM node:20-alpine

RUN mkdir -p /app

WORKDIR /app

COPY . .

RUN npm install

RUN npm run build

EXPOSE 5000

CMD ["node", "dist/main"]