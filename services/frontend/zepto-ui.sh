#!/bin/bash

echo "🔥 Building REAL Zepto-style UI..."

mkdir -p src/components src/pages

########################################
# HEADER (Real Zepto style)
########################################

cat <<EOF > src/components/Header.js
export default function Header() {
 return (
  <div className="bg-purple-700 text-white p-3 sticky top-0 z-50 shadow">

    <div className="font-bold text-lg">
      ⚡ Delivering in 10 mins
    </div>

    <input
      className="mt-2 w-full px-4 py-2 rounded-lg text-black"
      placeholder="Search groceries..."
    />

  </div>
 )
}
EOF

########################################
# CATEGORY BAR
########################################

cat <<EOF > src/components/CategoryBar.js
export default function CategoryBar() {

 const categories = ["Milk","Fruits","Snacks","Cold Drinks","Vegetables","Instant Food"]

 return (
  <div className="flex gap-3 overflow-x-auto p-3 bg-white">

   {categories.map(c => (
     <div key={c} className="px-4 py-2 bg-purple-100 rounded-full whitespace-nowrap">
       {c}
     </div>
   ))}

  </div>
 )
}
EOF

########################################
# PRODUCT CARD
########################################

cat <<EOF > src/components/ProductCard.js
export default function ProductCard({product}){

 return(
  <div className="bg-white rounded-lg shadow-sm p-3">

    <img
      src={product.image}
      className="h-32 w-full object-cover rounded"
      alt=""
    />

    <p className="text-sm mt-2">{product.name}</p>

    <div className="flex justify-between items-center mt-2">

      <span className="font-bold text-purple-700">
        ₹{product.price}
      </span>

      <button className="bg-purple-600 text-white px-3 py-1 rounded-lg">
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
  <div className="grid grid-cols-2 md:grid-cols-4 gap-4 p-4">

   {products.map(p => (
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
     🛒 View Cart
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

########################################
# GLOBAL STYLE
########################################

cat <<EOF > src/index.css
@tailwind base;
@tailwind components;
@tailwind utilities;

body{
 background:#f7f7f7;
 font-family: system-ui;
}
EOF

echo "✅ REAL Zepto UI installed!"
