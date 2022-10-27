FROM node:16.14-alpine

EXPOSE 3000

WORKDIR /app-frontend

COPY package.json /app-frontend/

RUN npm install

COPY . /app-frontend/

# ENTRYPOINT [ "npm" ]
CMD [ "npm", "start" ]

