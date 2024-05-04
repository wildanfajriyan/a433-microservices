# menggunakan base image Node.js versi 14
FROM node:14-alpine

# menentukan working directory untuk container adalah /app
WORKDIR /app

# menyalin seluruh source code pada local working directory saat ini ke container working directory
COPY . .

# menentukan agar aplikasi berjalan dalam production mode
# dan menggunakan container bernama item-db sebagai data host
ENV NODE_ENV=production DB_HOST=item-db

# menginstall dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# mengekspos port yang akan digunakan oleh container
EXPOSE 8080

# eksekusi perintah saat container diluncurkan
CMD [ "npm", "start" ]