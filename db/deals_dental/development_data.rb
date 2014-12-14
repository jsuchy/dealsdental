require File.expand_path('../../../config/environment', __FILE__)

puts "Adding option types"
glove_size = Spree::OptionType.create!(
  {
    :name => "glove-size",
    :presentation => "Glove Size",
    :position => 1
  })

puts "Adding option values"
Spree::OptionValue.create!([
  {
    :name => "Small",
    :presentation => "S",
    :position => 1,
    :option_type => glove_size
  },
  {
    :name => "Medium",
    :presentation => "M",
    :position => 2,
    :option_type => glove_size
  },
  {
    :name => "Large",
    :presentation => "L",
    :position => 3,
    :option_type => glove_size
  }
])


puts "Adding products"
tax_category = Spree::TaxCategory.find_by_name!("Default")
shipping_category = Spree::ShippingCategory.find_by_name!("Default")

default_attrs = {
  :description => Faker::Lorem.paragraph,
  :available_on => Time.zone.now
}

products = [
  {
    :name => "Product #1",
    :tax_category => tax_category,
    :shipping_category => shipping_category,
    :option_types => [glove_size],
    :price => 15.99
  }
]

products.each do |product_attrs|
  product = Spree::Product.create!(default_attrs.merge(product_attrs))
end

puts "Adding product variants"
product_1 = Spree::Product.find_by_name!("Product #1")

small = Spree::OptionValue.find_by_name!("Small")
medium = Spree::OptionValue.find_by_name!("Medium")
large = Spree::OptionValue.find_by_name!("Large")


variants = [
  {
    :product => product_1,
    :option_values => [small],
    :sku => "TS-00001",
    :cost_price => 0
  },
  {
    :product => product_1,
    :option_values => [medium],
    :sku => "TS-00002",
    :cost_price => 0
  },
  {
    :product => product_1,
    :option_values => [large],
    :sku => "TS-00003",
    :cost_price => 0
  }
]

Spree::Variant.create!(variants)

Spree::Variant.all.each do |variant|
  variant.stock_items.each do |stock_item|
    Spree::StockMovement.create(:quantity => 10, :stock_item => stock_item)
  end
end
