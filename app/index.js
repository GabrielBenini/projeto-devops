const http = require('http');

const PORT = process.env.PORT || 3000;
const ENV = process.env.ENV || 'local';

const server = http.createServer((req, res) => {
  res.end(`Aplicação rodando no ambiente: ${ENV}`);
});

server.listen(PORT, () => {
  console.log(`Servidor rodando na porta ${PORT}`);
});
