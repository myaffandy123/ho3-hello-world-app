FROM node:14
WORKDIR /app
COPY package*.json ./
RUN mkdir ./.npm && sudo chown -R 110:120 ./.npm
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node", "index.js"]