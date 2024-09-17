FROM node:14
RUN addgroup app && adduser -S app -G app
WORKDIR /app
COPY package*.json ./
# RUN chown -R 110:120 ./.npm
RUN npm install
COPY . .
EXPOSE 3000
CMD ["node", "index.js"]