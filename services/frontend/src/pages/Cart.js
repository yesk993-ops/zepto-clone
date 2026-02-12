import {useEffect,useState} from "react";

export default function Cart(){

 const [cart,setCart]=useState([]);

 useEffect(()=>{

   fetch("http://cart/cart")
   .then(res=>res.json())
   .then(data=>setCart(data));

 },[]);

 return(

   <div>

     <h1>Cart</h1>

     {cart.map((item,i)=>(

       <p key={i}>{item.name}</p>

     ))}

   </div>
 )
}
