const http = require('http');

http.createServer((req, res) => {
  res.end("MindTrack App Running");
}).listen(3000);
