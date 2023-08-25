FROM node:20-slim

RUN apt-get update && apt-get install -y openssl 

WORKDIR /home/node/app

COPY . .

RUN npm install && npx prisma generate

CMD [ "tail", "-f", "/dev/null" ]