require 'faker'

products = []
reviews = []

product_count = 25
review_count = 5


(1..product_count).each do
  product = {
    title: 'Test Product',
    description: Faker::Lorem.sentence(1),
    price: 9.99
  }
  products.push(product)
end
products = Product.create(products)

(1..review_count).each do
  product = products[rand(0..(product_count-1))]
  review = {
      review_text: Faker::Lorem.sentence(1),
      product: product
  }
  reviews.push(review)
end
reviews = Review.create(reviews)
