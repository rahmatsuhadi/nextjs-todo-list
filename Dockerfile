

FROM node:18-alpine


# Set working directory di dalam container
WORKDIR /app

# salin package.json
COPY package*.json ./

RUN npm install

# Salin seluruh kode aplikasi  ke container
COPY . .

RUN npm run build

# export port 3000
EXPOSE 3000


CMD ["npm", "start"]