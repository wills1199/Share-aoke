const express = require('express');
// const path = require('path');
const bodyParser = require('body-parser');

const app = express();

const PORT = process.env.PORT || 8080;

app.use(bodyParser.json());

app.listen(PORT, () => {
  console.log(`Listening on :${PORT}`);
});