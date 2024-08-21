const express = require('express')
const app = express()

app.get('/', (req,res) => res.send('Hello World!Test na porta 9900'))
app.listen(9900, () => console.log('Server ready'))
