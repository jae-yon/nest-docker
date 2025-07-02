FROM node:20-alpine

WORKDIR /app

# 의존성 설치 최적화
COPY package*.json ./

RUN npm ci 

# 앱 소스코드 복사
COPY . .

# 빌드
RUN npm run build

EXPOSE 5000

CMD ["node", "dist/main.js"]