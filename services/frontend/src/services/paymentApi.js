const PAYMENT_URL = "http://payment:3000";

export async function checkout(cart){

 await fetch(`${PAYMENT_URL}/checkout`,{
  method:"POST",
  headers:{'Content-Type':'application/json'},
  body:JSON.stringify(cart)
 });

}
