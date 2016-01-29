class Product < ActiveRecord::Base
  validates :description, :name, presence: true
  validates :price_in_cents, numericality: {only_integer: true}

  def formatted_price
    price_in_dollars = price_in_cents.to_f / 100
    sprintf("%.2f", price_in_dollars)
  end

end

# un peu de vocabulaire...
# The Model Product
# holds the collection of all its instances.
# We usually store these objects (product) in an instance variable @products.
# notice the "S"
