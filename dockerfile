FROM node:alpine3.20

WORKDIR /app

COPY package*.json vite.config.ts tsconfig.json tsconfig.app.json tsconfig.node.json ./
RUN npm install

COPY . .

EXPOSE 5173

CMD ["npm", "run", "dev", "--", "--host"]
