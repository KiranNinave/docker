# builder phase
FROM node:alpine as builder
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build
# after build phase /app/build have all the production code

# production phase
FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html
