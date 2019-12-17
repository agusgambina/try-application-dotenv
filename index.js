require('dotenv').config();
const express = require('express')
const app = express()
const port = 3000

const routes = require('try-base-module');

console.log('myApplication NODE_ENV ->', process.env.NODE_ENV);

app.get('/', (req, res) => res.send('Hello World!'))

app.listen(port, () => console.log(`Example app listening on port ${port}!`))