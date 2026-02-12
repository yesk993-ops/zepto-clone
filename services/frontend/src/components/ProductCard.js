export default function ProductCard({product}){

 return(

  <div className="bg-white rounded-xl shadow-md hover:shadow-2xl transition duration-300 p-4">

   <img
    src={product.image}
    className="h-48 w-full object-cover rounded-lg"
    alt=""
   />

   <h3 className="mt-3 font-semibold">{product.name}</h3>

   <p className="text-orange-600 font-bold text-lg">
    ₹{product.price}
   </p>

   <button className="mt-3 bg-yellow-400 px-4 py-2 rounded-lg hover:bg-yellow-500 w-full">
    Add to Cart
   </button>

  </div>

 )
}
