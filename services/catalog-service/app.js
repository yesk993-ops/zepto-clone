const express = require("express");
const app = express();

app.get("/", (req,res)=> {
 res.send("catalog-service running");
});

app.listen(3000,()=>console.log("catalog-service started"));
