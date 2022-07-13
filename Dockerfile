FROM node:lts-alpine as build
COPY . /app
WORKDIR /app
RUN apk add git
ENV VERCEL_ARTIFACTS_TOKEN=123
ENV VERCEL_ARTIFACTS_OWNER=team_test
RUN yarn
RUN yarn build