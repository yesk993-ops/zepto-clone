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
