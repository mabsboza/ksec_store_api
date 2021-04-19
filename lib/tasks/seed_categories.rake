task seed_categories: :environment do
Category.create(
    code: '001',
    name: 'Montañera',
  )

  Category.create(
    code: '002',
    name: 'Carrera',
  )

  puts 'complete'
end