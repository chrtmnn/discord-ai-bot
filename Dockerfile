FROM node:20-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY --chown=node:node . /home/node/app

USER node

RUN yarn install --prod --no-lockfile

CMD ["node","./src/index.js"]
