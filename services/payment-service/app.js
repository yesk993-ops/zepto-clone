const express = require('express');
const app = express();

app.use(express.json());

app.post('/pay',(req,res)=>{

 setTimeout(()=>{
   res.send({status:"Payment successful"});
 },2000);

});

app.listen(3000);
