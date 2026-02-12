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
