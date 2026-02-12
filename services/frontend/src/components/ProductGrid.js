import ProductCard from "./ProductCard"

export default function ProductGrid({products}){

 return(
  <div className="grid grid-cols-2 md:grid-cols-4 gap-3 p-3">

   {products.map(p=>(
     <ProductCard key={p.id} product={p}/>
   ))}

  </div>
 )
}
