const CART_URL = "http://cart:3000";

export async function addToCart(product) {

 await fetch(`${CART_URL}/add`,{
  method:"POST",
  headers:{'Content-Type':'application/json'},
  body:JSON.stringify(product)
 });

}
