// require('dotenv').config()
const express = require('express')
const path = require('path')

const PORT = process.env.PORT || 3300
const server = express()
server.use(express.json())
//serving our static assets
server.use(express.static(path.join(__dirname, 'client/build')))
//endpoint era
server.get('/', (req, res) => {
  res.json({ message: 'API is up!!!'})
})
//fallback endpoint that sends index.html
server.get('*',(req, res) =>{
    res.sendFile(path.join(__dirname, 'client/build', 'index.html'))
})

server.listen(PORT, () => {
  console.log(`**\nlistening on http://localhost:${PORT}\n**`)
})