import React, { useEffect, useState } from "react";

function App() {

  const [products,setProducts] = useState([]);
  const [cart,setCart] = useState([]);

  useEffect(()=>{
    fetch("http://localhost:3000/products")
      .then(res=>res.json())
      .then(data=>setProducts(data));
  },[]);

  const addToCart = (item) => {
    setCart([...cart,item]);
  };

  const checkout = async () => {

    await fetch("http://localhost:3002/pay",{
      method:"POST"
    });

    alert("Payment successful 😎");
    setCart([]);
  }

  return (
    <div style={{padding:"20px"}}>

      <h1>🛒 Zepto Clone</h1>

      <h2>Products</h2>

      <div style={{display:"flex",flexWrap:"wrap"}}>

        {products.map(p=>(
          <div key={p.id} style={{border:"1px solid gray",margin:"10px",padding:"10px"}}>

            <img src={p.image} width="150" />

            <h3>{p.name}</h3>

            <button onClick={()=>addToCart(p)}>Add to cart</button>

          </div>
        ))}

      </div>

      <h2>Cart ({cart.length})</h2>

      <button onClick={checkout}>Checkout</button>

    </div>
  );
}

export default App;
