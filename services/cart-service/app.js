const express = require('express');
const app = express();

app.use(express.json());

let cart=[];

app.post('/cart',(req,res)=>{
 cart.push(req.body);
 res.send(cart);
});

app.get('/cart',(req,res)=>{
 res.send(cart);
});

app.listen(3001);
