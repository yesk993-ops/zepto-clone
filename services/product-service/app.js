const express = require('express');
const app = express();

app.get('/products',(req,res)=>{

res.json([
 {id:1,name:"Milk",image:"https://images.unsplash.com/photo-1550583724-b2692b85b150"},
 {id:2,name:"Bread",image:"https://images.unsplash.com/photo-1608198093002-ad4e005484ec"},
 {id:3,name:"Banana",image:"https://images.unsplash.com/photo-1571771894821-ce9b6c11b08e"},
 {id:4,name:"Eggs",image:"https://images.unsplash.com/photo-1587486913049-53fc88980cfc"},
 {id:5,name:"Apple",image:"https://images.unsplash.com/photo-1567306226416-28f0efdc88ce"},
 {id:6,name:"Tomato",image:"https://images.unsplash.com/photo-1592928302636-c83cf1e1d1c2"},
 {id:7,name:"Potato",image:"https://images.unsplash.com/photo-1518977956812-cd3dbadaaf31"},
 {id:8,name:"Rice",image:"https://images.unsplash.com/photo-1586201375761-83865001e31c"},
 {id:9,name:"Juice",image:"https://images.unsplash.com/photo-1582719478250-c89cae4dc85b"},
 {id:10,name:"Chocolate",image:"https://images.unsplash.com/photo-1511381939415-e44015466834"}
]);

});

app.listen(3000);
