#!/bin/bash

echo "🔥 Installing REAL ZEPTO PRO UI..."

mkdir -p src/components src/pages

########################################
# DELIVERY HEADER
########################################

cat <<EOF > src/components/Header.js
export default function Header() {
 return (
  <div className="bg-purple-700 text-white p-3 sticky top-0 z-50 shadow">

    <div className="flex justify-between items-center">

      <div className="font-bold">
        ⚡ Delivering in 10 mins
      </div>

      <div>📍 Pune</div>

    </div>

    <input
      className="mt-2 w-full px-4 py-2 rounded-lg text-black"
      placeholder="Search for groceries..."
    />

  </div>
 )
}
EOF

########################################
# CATEGORY SCROLLER
########################################

cat <<EOF > src/components/CategoryBar.js
export default function CategoryBar() {

 const categories=["Milk","Fruits","Snacks","Vegetables","Drinks","Instant Food"]

 return (
  <div className="flex gap-3 overflow-x-auto p-3 bg-white">

   {categories.map(c=>(
    <div key={c} className="bg-purple-100 px-4 py-2 rounded-full whitespace-nowrap">
      {c}
    </div>
   ))}

  </div>
 )
}
EOF

########################################
# PRODUCT CARD (REAL ZEPTO STYLE)
########################################

cat <<EOF > src/components/ProductCard.js
export default function ProductCard({product}){

 return(
  <div className="bg-white rounded-lg shadow-sm p-3">

   <img
    src={product.image}
    className="h-28 w-full object-cover rounded"
    alt=""
   />

   <p className="text-sm mt-2">{product.name}</p>

   <div className="flex justify-between items-center mt-2">

    <span className="font-bold text-purple-700">
     ₹{product.price}
    </span>

    <button className="bg-purple-600 text-white px-3 py-1 rounded-lg text-sm">
      ADD
    </button>

   </div>

  </div>
 )
}
EOF

########################################
# PRODUCT GRID
########################################

cat <<EOF > src/components/ProductGrid.js
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
EOF

########################################
# HOME PAGE
########################################

cat <<EOF > src/pages/Home.js
import Header from "../components/Header"
import CategoryBar from "../components/CategoryBar"
import ProductGrid from "../components/ProductGrid"

const products=[
 {id:1,name:"Milk",price:50,image:"https://images.unsplash.com/photo-1563636619-e9143da7973b"},
 {id:2,name:"Bread",price:40,image:"https://images.unsplash.com/photo-1608198093002-ad4e005484ec"},
 {id:3,name:"Eggs",price:80,image:"https://images.unsplash.com/photo-1587486913049-53fc88980cfc"},
 {id:4,name:"Banana",price:30,image:"https://images.unsplash.com/photo-1571771894821-ce9b6c11b08e"}
]

export default function Home(){

 return(
  <div>

   <Header/>
   <CategoryBar/>
   <ProductGrid products={products}/>

   <div className="fixed bottom-5 right-5 bg-purple-700 text-white px-6 py-3 rounded-full shadow-lg">
     🛒 Cart
   </div>

  </div>
 )
}
EOF

########################################
# APP
########################################

cat <<EOF > src/App.js
import Home from "./pages/Home"
import "./index.css"

export default function App(){
 return <Home/>
}
EOF

echo "✅ REAL ZEPTO PRO UI INSTALLED!"
