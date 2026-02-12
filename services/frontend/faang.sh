#!/bin/bash

echo "🔥 Building FAANG-level premium frontend..."

############################################
# INSTALL TAILWIND (modern styling system)
############################################

npm install -D tailwindcss postcss autoprefixer

export PATH=$PATH:./node_modules/.bin

npx tailwindcss init -p

############################################
# CONFIG TAILWIND
############################################

cat <<EOF > tailwind.config.js
module.exports = {
 content: ["./src/**/*.{js,jsx,ts,tsx}"],
 theme: {
  extend: {
   colors:{
    brand:"#0f172a"
   }
  },
 },
 plugins: [],
}
EOF

############################################
# INDEX CSS
############################################

cat <<EOF > src/index.css
@tailwind base;
@tailwind components;
@tailwind utilities;

body{
 background:#f3f4f6;
 font-family: system-ui;
}
EOF

############################################
# FOLDER STRUCTURE
############################################

mkdir -p src/components src/pages

############################################
# HEADER (FAANG STYLE)
############################################

cat <<EOF > src/components/Header.js
export default function Header() {
 return (
  <div className="sticky top-0 bg-brand text-white p-4 flex items-center justify-between shadow-lg z-50">

   <h1 className="font-bold text-xl">⚡ Zepto</h1>

   <input
    className="w-1/2 px-4 py-2 rounded-lg text-black"
    placeholder="Search products..."
   />

   <div className="flex gap-6">
    <span>Account</span>
    <span>Orders</span>
    <span>🛒 Cart</span>
   </div>

  </div>
 )
}
EOF

############################################
# HERO SECTION
############################################

cat <<EOF > src/components/Hero.js
export default function Hero(){
 return (
  <div className="p-6">
   <div className="bg-gradient-to-r from-purple-500 to-indigo-600 text-white rounded-xl p-10 shadow-lg">

    <h2 className="text-4xl font-bold">Fast Delivery ⚡</h2>
    <p className="mt-2">Premium grocery experience like real Zepto</p>

   </div>
  </div>
 )
}
EOF

############################################
# PRODUCT CARD
############################################

cat <<EOF > src/components/ProductCard.js
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
EOF

############################################
# PRODUCT GRID
############################################

cat <<EOF > src/components/ProductGrid.js
import ProductCard from "./ProductCard"

export default function ProductGrid({products}){

 return(
  <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6 p-6">

   {products.map(p => (
    <ProductCard key={p.id} product={p}/>
   ))}

  </div>
 )
}
EOF

############################################
# HOME PAGE
############################################

cat <<EOF > src/pages/Home.js
import Header from "../components/Header"
import Hero from "../components/Hero"
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
   <Hero/>
   <ProductGrid products={products}/>
  </div>
 )
}
EOF

############################################
# APP
############################################

cat <<EOF > src/App.js
import Home from "./pages/Home"
import "./index.css"

export default function App(){
 return <Home/>
}
EOF

echo "✅ FAANG-level premium UI installed successfully!"
