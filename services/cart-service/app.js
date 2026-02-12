const express = require("express");
const app = express();

app.get("/", (req,res)=> {
 res.send("cart-service running");
});

app.listen(3000,()=>console.log("cart-service started"));
