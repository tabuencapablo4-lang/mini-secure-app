FROM node:20-alpine
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3001
RUN adduser --disabled-password --gecos '' appuser
USER appuser
CMD ["npm","start"]
