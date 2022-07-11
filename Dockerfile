FROM node:lts-alpine
COPY . /app
WORKDIR /app
RUN yarn install
RUN yarn build
CMD yarn dev