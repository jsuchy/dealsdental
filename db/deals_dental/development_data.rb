require File.expand_path('../../../config/environment', __FILE__)

puts "Adding option types"
packaging = Spree::OptionType.create!(
  {
    :name => "packaging",
    :presentation => "Packaging",
    :position => 1
  })

color = Spree::OptionType.create!(
  {
    :name => "color",
    :presentation => "Color",
    :position => 2
  })

apparel_size = Spree::OptionType.create!(
  {
    :name => "apparel-size",
    :presentation => "Apparel Size",
    :position => 3
  })

apparel_type = Spree::OptionType.create!(
  {
    :name => "apparel-type",
    :presentation => "Apparel Type",
    :position => 4
  })

glove_size = Spree::OptionType.create!(
  {
    :name => "glove-size",
    :presentation => "Glove Size",
    :position => 5
  })

disposables_type = Spree::OptionType.create!(
  {
    :name => "disposables-type",
    :presentation => "Disposables Type",
    :position => 6
  })

disposables_dimensions = Spree::OptionType.create!(
  {
    :name => "disposables-dimensions",
    :presentation => "Disposables Dimensions",
    :position => 7
  })

evacuation_type = Spree::OptionType.create!(
  {
    :name => "evacuation-type",
    :presentation => "Evacuation Type",
    :position => 8
  })

evacuation_size = Spree::OptionType.create!(
  {
    :name => "evacuation-size",
    :presentation => "Evacuation Size",
    :position => 9
  })

impression_materials_size = Spree::OptionType.create!(
  {
    :name => "impression-materials-size",
    :presentation => "Impression Materials Size",
    :position => 10
  })

impression_materials_type = Spree::OptionType.create!(
  {
    :name => "impression-materials-type",
    :presentation => "Impression Materials Type",
    :position => 11
  })

impression_materials_flavor = Spree::OptionType.create!(
  {
    :name => "impression-materials-flavor",
    :presentation => "Impression Materials Flavor",
    :position => 12
  })

instruments_type = Spree::OptionType.create!(
  {
    :name => "instruments-type",
    :presentation => "Instruments Type",
    :position => 13
  })

masks_type = Spree::OptionType.create!(
  {
    :name => "masks-type",
    :presentation => "Masks Type",
    :position => 14
  })

masks_size = Spree::OptionType.create!(
  {
    :name => "masks-size",
    :presentation => "Masks size",
    :position => 15
  })

preventatives_type = Spree::OptionType.create!(
  {
    :name => "preventatives-type",
    :presentation => "Preventatives Type",
    :position => 16
  })

preventatives_size = Spree::OptionType.create!(
  {
    :name => "preventatives-size",
    :presentation => "Preventatives Size",
    :position => 17
  })

sterilization_type = Spree::OptionType.create!(
  {
    :name => "sterilization-type",
    :presentation => "Sterilization Type",
    :position => 18
  })

sterilization_size = Spree::Optiontype.create!(
  {
    :name => "sterilization-size",
    :presentation => "Sterilization Size",
    :position => 19
  })

sterilization_dimensions = Spree::OptionType.create!(
  {
    :name => "sterilization-dimensions",
    :presentation => "Sterilization Dimensions",
    :position => 20
  })

tips_size = Spree::Optiontype.create!(
  {
    :name => "tips-size",
    :presentation => "Tips Size",
    :position => 21
  })

tips_type = Spree::Optiontype.create!(
  {
    :name => "tips-type",
    :presentation => "Tips Type",
    :position => 22
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
