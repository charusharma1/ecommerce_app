
Image.create!([
  {product_id: 1, image_url: "http://rlv.zcache.com/super_star_kids_stickers-r154e2f8c50664169be62ceb1d347684b_v9waf_8byvr_512.jpg"},
  {product_id: 1, image_url: "https://s-media-cache-ak0.pinimg.com/236x/60/5b/76/605b7603e3b622514e783693d5c14928.jpg"},
  {product_id: 2, image_url: "http://mwpca.org/yahoo_site_admin1/assets/images/372B9B01-E4D3-488C-BD1E-13CAFCD9AC15.12054752_std.gif"},
  {product_id: 3, image_url: "http://mwpca.org/yahoo_site_admin1/assets/images/372B9B01-E4D3-488C-BD1E-13CAFCD9AC15.12054752_std.gif"},
  {product_id: 4, image_url: "http://mwpca.org/yahoo_site_admin1/assets/images/372B9B01-E4D3-488C-BD1E-13CAFCD9AC15.12054752_std.gif"},
  {product_id: 5, image_url: "http://mwpca.org/yahoo_site_admin1/assets/images/372B9B01-E4D3-488C-BD1E-13CAFCD9AC15.12054752_std.gif"},
  {product_id: 6, image_url: "http://mwpca.org/yahoo_site_admin1/assets/images/372B9B01-E4D3-488C-BD1E-13CAFCD9AC15.12054752_std.gif"},
  {product_id: 7, image_url: "http://mwpca.org/yahoo_site_admin1/assets/images/372B9B01-E4D3-488C-BD1E-13CAFCD9AC15.12054752_std.gif"},
  {product_id: 8, image_url: "http://mwpca.org/yahoo_site_admin1/assets/images/372B9B01-E4D3-488C-BD1E-13CAFCD9AC15.12054752_std.gif"},
  {product_id: 18, image_url: "http://www.vacmag.com/wp-content/uploads/2013/09/bagless.jpg"}
])
Order.create!([
  {quantity: 12, user_id: 1, product_id: nil, subtotal: nil, tax: nil, total: nil},
  {quantity: 45367, user_id: 1, product_id: nil, subtotal: nil, tax: nil, total: nil},
  {quantity: 2, user_id: 1, product_id: nil, subtotal: nil, tax: nil, total: nil},
  {quantity: 4, user_id: 1, product_id: nil, subtotal: nil, tax: nil, total: nil},
  {quantity: 1, user_id: 1, product_id: nil, subtotal: nil, tax: nil, total: nil},
  {quantity: 10, user_id: 1, product_id: nil, subtotal: nil, tax: nil, total: nil},
  {quantity: 453, user_id: 1, product_id: nil, subtotal: nil, tax: nil, total: nil}
])
Product.create!([
  {name: "Stickers", price: "20.0", description: nil, supplier_id: 1, user_id: 1},
  {name: "Umbrella", price: "35.0", description: nil, supplier_id: 1, user_id: 1},
  {name: "Sleeping bag", price: "35.0", description: nil, supplier_id: 1, user_id: 2},
  {name: "Camping tent", price: "35.0", description: nil, supplier_id: 1, user_id: 1},
  {name: "Night stand", price: "35.0", description: nil, supplier_id: 1, user_id: 1},
  {name: "Recliner", price: "35.0", description: nil, supplier_id: 1, user_id: 1},
  {name: "Potted plant", price: "300.0", description: nil, supplier_id: 1, user_id: 1},
  {name: "Bike", price: "300.0", description: nil, supplier_id: 1, user_id: 1},
  {name: "charu1603@gmail.com", price: "240.0", description: nil, supplier_id: 1, user_id: 1}
])
Supplier.create!([
  {name: "Jerome", email: "jerome@disneyland.com", phone: 911}
])
