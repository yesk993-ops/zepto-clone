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
