export default function Payment(){

 const pay=()=>{

   fetch("http://payment/checkout",{method:"POST"});

 }

 return(

  <div>

   <h1>Payment</h1>

   <button onClick={pay}>Proceed Payment</button>

  </div>
 )
}
