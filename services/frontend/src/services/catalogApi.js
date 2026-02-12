const CATALOG_URL = "http://catalog:3000";

export async function getProducts() {
 const res = await fetch(`${CATALOG_URL}/products`);
 return res.json();
}
