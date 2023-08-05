const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('Mi primero Hola Mundo desde Kubernetes!');
});

app.listen(port, () => {
  console.log(`La aplicación está escuchando en http://localhost:${port}`);
});
