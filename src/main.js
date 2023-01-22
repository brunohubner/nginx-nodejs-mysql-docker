require('dotenv/config')
const express = require('express');
const app = express();

const PORT = process.env.PORT

app.get('/', (_, res) => {
  res.send({
    statusCode: 200,
    message: "Server alive!"
  });
});

app.listen(PORT, () => console.log("Server running at http://localhost:" + PORT));