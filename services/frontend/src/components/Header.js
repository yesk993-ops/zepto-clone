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
