FROM node:18

WORKDIR /app

RUN echo "const http = require('http'); \
http.createServer((req,res)=>{res.end('MindTrack App Running')}).listen(3000);" > server.js

EXPOSE 3000

CMD ["node", "server.js"]
