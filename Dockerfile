FROM node:16.14.2-buster-slim

RUN apt-get update

RUN apt-get install -y git
x
RUN npm install -g serverless

# RUN serverless config credentials --provider aws --key $AWS_KEY --secret $AWS_SECRET

WORKDIR /home/code

COPY package.json ./
# COPY package.json package-lock.json ./
