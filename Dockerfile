FROM node:14
RUN addgroup app && adduser -S -G app app
WORKDIR /app
COPY package*.json ./
# RUN chown -R 110:120 ./.npm
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node", "index.js"]