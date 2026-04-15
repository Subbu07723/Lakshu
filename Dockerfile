FROM node:18

WORKDIR /app

RUN echo "My app is running"

CMD ["node", "-e", "console.log('App started successfully')"]
