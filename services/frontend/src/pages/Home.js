import { useEffect, useState } from "react";

import Header from "../components/Header";
import CategoryBar from "../components/CategoryBar";
import ProductGrid from "../components/ProductGrid";

import { getProducts } from "../services/catalogApi";

export default function Home() {

  const [products, setProducts] = useState([]);

  useEffect(() => {
    getProducts().then(setProducts);
  }, []);

  return (
    <>
      <Header />
      <CategoryBar />
      <ProductGrid products={products} />
    </>
  );
}
