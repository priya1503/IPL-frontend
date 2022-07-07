FROM node:13.12.0-alpine

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]
RUN npm install --global
RUN npm install sass --force

COPY . .
CMD ["npm", "start"]