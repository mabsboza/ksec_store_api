task seed_products: :environment do
  Product.create(
    code: '001',
    name: 'Leche',
    brand: 'Vaquita',
    quantity: 10,
    price: 20
)

  Product.create(
    code: '002',
    name: 'Barra de pan',
    brand: 'El Panadero',
    quantity: 20,
    price: 10
  )

  puts 'complete'
end