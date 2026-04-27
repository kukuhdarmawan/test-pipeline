FROM node:18-alpine

# set working directory
WORKDIR /app

# copy package.json dulu (biar cache optimal)
COPY package*.json ./

# install dependencies
RUN npm install

# copy semua source code
COPY . .

# expose port
EXPOSE 3000

# run app
CMD ["node", "app.js"]
