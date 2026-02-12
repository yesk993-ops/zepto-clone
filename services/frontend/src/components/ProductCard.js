import { addToCart } from "../services/cartAPI";

export default function ProductCard({ product }) {

  return (
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

        <button
          className="bg-purple-600 text-white px-3 py-1 rounded-lg text-sm"
          onClick={() => addToCart(product)}
        >
          ADD
        </button>

      </div>

    </div>
  );
}
