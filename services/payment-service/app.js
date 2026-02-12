const express = require("express");
const app = express();

app.get("/", (req,res)=> {
 res.send("payment-service running");
});

app.listen(3000,()=>console.log("payment-service started"));
