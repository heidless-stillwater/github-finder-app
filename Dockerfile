FROM node:18-alpine3.18

WORKDIR /github-finder/

ENV REACT_APP_GITHUB_URL "https://api.github.com"
ENV REACT_APP_GITHUB_TOKEN "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"

COPY public/ /github-finder/public
COPY src/ /github-finder/src
COPY package.json /github-finder/

COPY tailwind.config.js /github-finder/

RUN npm install

CMD ["npm", "start"]
