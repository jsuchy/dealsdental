require File.expand_path('../../../config/environment', __FILE__)

puts "Adding option types"
color = Spree::OptionType.create!(
  {
    :name => "color",
    :presentation => "Color",
    :position => 1
  })

size = Spree::OptionType.create!(
  {
    :name => "size",
    :presentation => "Size",
    :position => 2
  })

gown_size = Spree::OptionType.create!(
  {
    :name => "gown-size",
    :presentation => "Size",
    :position => 3
  })

eyewear_type = Spree::OptionType.create!(
  {
    :name => "eyewear-type",
    :presentation => "Type",
    :position => 4
  })

orthobox_type = Spree::OptionType.create!(
  {
    :name => "ortho-box-type",
    :presentation => "Type",
    :position => 5
  })

cap_size = Spree::OptionType.create!(
  {
    :name => "cap-size",
    :presentation => "Size",
    :position => 6
  })

puts "Adding option values"
Spree::OptionValue.create!([
  {
    :name => "Extra Small",
    :presentation => "XS",
    :position => 1,
    :option_type => size
  },
  {
    :name => "Small",
    :presentation => "S",
    :position => 2,
    :option_type => size
  },
  {
    :name => "Medium",
    :presentation => "M",
    :position => 3,
    :option_type => size
  },
  {
    :name => "Large",
    :presentation => "L",
    :position => 4,
    :option_type => size
  },
  {
    :name => "Extra Large",
    :presentation => "XL",
    :position => 5,
    :option_type => size
  },
  {
    :name => "Double Extra Large",
    :presentation => "XXL",
    :position => 6,
    :option_type => size
  },
  {
    :name => "Triple Extra Large",
    :presentation => "XXXL",
    :position => 7,
    :option_type => size
  },

  {
    :name => "Blue",
    :presentation => "Blue",
    :position => 8,
    :option_type => color
  },
  {
    :name => "Ceil Blue",
    :presentation => "Ceil Blue",
    :position => 9,
    :option_type => color
  },
  {
    :name => "Sky Blue",
    :presentation => "Sky Blue",
    :position => 10,
    :option_type => color
  },
  {
    :name => "Pink",
    :presentation => "Pink",
    :position => 11,
    :option_type => color
  },
  {
    :name => "Purple",
    :presentation => "Purple",
    :position => 12,
    :option_type => color
  },
  {
    :name => "White",
    :presentation => "White",
    :position => 13,
    :option_type => color
  },
  {
    :name => "Green",
    :presentation => "Green",
    :position => 14,
    :option_type => color
  },
  {
    :name => "Mauve",
    :presentation => "Mauve",
    :position => 15,
    :option_type => color
  },
  {
    :name => "Mauve (Pink)",
    :presentation => "Mauve (Pink)",
    :position => 16,
    :option_type => color
  },
  {
    :name => "Lavender",
    :presentation => "Lavender",
    :position => 17,
    :option_type => color
  },
  {
    :name => "Yellow",
    :presentation => "Yellow",
    :position => 18,
    :option_type => color
  },
  {
    :name => "Metal",
    :presentation => "Metal",
    :position => 19,
    :option_type => color
  },
  {
    :name => "Orange",
    :presentation => "Orange",
    :position => 20,
    :option_type => color
  },
  {
    :name => "Clear",
    :presentation => "Clear",
    :position => 21,
    :option_type => color
  },
  {
    :name => "Gown Medium",
    :presentation => 'Medium - 40" Length',
    :position => 22,
    :option_type => gown_size
  },
  {
    :name => "Gown Large",
    :presentation => 'Large - 48" Length',
    :position => 23,
    :option_type => gown_size
  },
  {
    :name => "Eyewear Clear",
    :presentation => 'Clear',
    :position => 24,
    :option_type => eyewear_type
  },
  {
    :name => "Eyewear Fashion Style - Clear",
    :presentation => 'Fashion Style - Clear',
    :position => 25,
    :option_type => eyewear_type
  },
  {
    :name => "Eyewear U.V Protective",
    :presentation => 'U.V Protective',
    :position => 26,
    :option_type => eyewear_type
  },
  {
    :name => "Eyewear U.V Protective - Fashion",
    :presentation => 'U.V Protective - Fashion',
    :position => 27,
    :option_type => eyewear_type
  },
  {
    :name => "Ortho-Box Denture",
    :presentation => 'Denture',
    :position => 28,
    :option_type => orthobox_type
  },
  {
    :name => "Ortho-Box Retainer",
    :presentation => 'Retainer',
    :position => 29,
    :option_type => orthobox_type
  },
  {
    :name => 'Blue - 21"',
    :presentation => 'Blue - 21"',
    :position => 30,
    :option_type => cap_size
  },
  {
    :name => 'Blue - 24"',
    :presentation => 'Blue - 24"',
    :position => 31,
    :option_type => cap_size
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
    :name => 'Bouffant Caps (Non-Sterile - 100/box)',
    :tax_category => tax_category,
    :shipping_category => shipping_category,
    :option_types => [cap_size],
    :price => 8.95
  },
  {
    :name => 'Shoe Covers (Non-Sterile - 100/box)',
    :tax_category => tax_category,
    :shipping_category => shipping_category,
    :description => "Blue - Non-Skid - One Size Fits All",
    :sku => "SC-5000",
    :price => 9.95
  },
  {
    :name => 'Defend Plus Jacket - 10/Bag',
    :tax_category => tax_category,
    :shipping_category => shipping_category,
    :option_types => [color, size],
    :price => 21.95
  },
  {
    :name => 'Defend Plus Full Length Lab Coat - 10/Bag',
    :tax_category => tax_category,
    :shipping_category => shipping_category,
    :option_types => [color, size],
    :price => 22.95
  },
  {
    :name => 'Disposable Lab Coats - 10/Bag',
    :tax_category => tax_category,
    :shipping_category => shipping_category,
    :option_types => [size],
    :price => 19.95
  },
  {
    :name => 'Disposable Tie-Back Protective Gowns - 10/Bag',
    :tax_category => tax_category,
    :shipping_category => shipping_category,
    :option_types => [gown_size],
    :price => 10.95
  },
  {
    :name => 'Protective Eyewear',
    :tax_category => tax_category,
    :shipping_category => shipping_category,
    :option_types => [eyewear_type],
    :price => 6.20
  },
  {
    :name => 'Ortho Boxes (Assorted Colors) - 12/Box',
    :tax_category => tax_category,
    :shipping_category => shipping_category,
    :option_types => [orthobox_type],
    :price => 8.95
  }
]

products.each do |product_attrs|
  Spree::Product.create!(default_attrs.merge(product_attrs))
end

puts "Adding product variants"
bouffant_caps = Spree::Product.find_by_name!("Bouffant Caps (Non-Sterile - 100/box)")
defend_jacket = Spree::Product.find_by_name!('Defend Plus Jacket - 10/Bag')
defend_lab_coat = Spree::Product.find_by_name!('Defend Plus Full Length Lab Coat - 10/Bag')
disposable_lab_coat = Spree::Product.find_by_name!('Disposable Lab Coats - 10/Bag')
disposable_gown = Spree::Product.find_by_name!('Disposable Tie-Back Protective Gowns - 10/Bag')
eyewear = Spree::Product.find_by_name!('Protective Eyewear')
orthobox = Spree::Product.find_by_name!('Ortho Boxes (Assorted Colors) - 12/Box')

blue_21 = Spree::OptionValue.find_by_name!('Blue - 21"')
blue_24 = Spree::OptionValue.find_by_name!('Blue - 24"')

x_small = Spree::OptionValue.find_by_name!('Extra Small')
small = Spree::OptionValue.find_by_name!('Small')
medium = Spree::OptionValue.find_by_name!('Medium')
large = Spree::OptionValue.find_by_name!('Large')
x_large = Spree::OptionValue.find_by_name!('Extra Large')
xx_large = Spree::OptionValue.find_by_name!('Double Extra Large')
xxx_large = Spree::OptionValue.find_by_name!('Triple Extra Large')

ceil_blue = Spree::OptionValue.find_by_name!('Ceil Blue')
sky_blue = Spree::OptionValue.find_by_name!('Sky Blue')
pink = Spree::OptionValue.find_by_name!('Pink')
purple = Spree::OptionValue.find_by_name!('Purple')

gown_medium = Spree::OptionValue.find_by_name!('Gown Medium')
gown_large = Spree::OptionValue.find_by_name!('Gown Large')

eyewear_clear = Spree::OptionValue.find_by_name!("Eyewear Clear")
eyewear_fashion_clear = Spree::OptionValue.find_by_name!("Eyewear Fashion Style - Clear")
eyewear_protective = Spree::OptionValue.find_by_name!("Eyewear U.V Protective")
eyewear_protective_fashion = Spree::OptionValue.find_by_name!("Eyewear U.V Protective - Fashion")

orthobox_denture = Spree::OptionValue.find_by_name!("Ortho-Box Denture")
orthobox_retainer = Spree::OptionValue.find_by_name!("Ortho-Box Retainer")

variants = [
  {
    :product => bouffant_caps,
    :option_values => [blue_21],
    :sku => "BC-3501",
    :price => 8.95
  },
  {
    :product => bouffant_caps,
    :option_values => [blue_24],
    :sku => "BC-3503",
    :price => 9.95
  },
  {
    :product => defend_jacket,
    :option_values => [ceil_blue, small],
    :sku => "SJ-3630CBS"
  },
  {
    :product => defend_jacket,
    :option_values => [ceil_blue, medium],
    :sku => "SJ-3630CBM"
  },
  {
    :product => defend_jacket,
    :option_values => [ceil_blue, large],
    :sku => "SJ-3630CBL"
  },
  {
    :product => defend_jacket,
    :option_values => [ceil_blue, x_large],
    :sku => "SJ-3630CBXL"
  },
  {
    :product => defend_jacket,
    :option_values => [pink, small],
    :sku => "SJ-3630LPS"
  },
  {
    :product => defend_jacket,
    :option_values => [pink, medium],
    :sku => "SJ-3630LPM"
  },
  {
    :product => defend_jacket,
    :option_values => [pink, large],
    :sku => "SJ-3630LPL"
  },
  {
    :product => defend_jacket,
    :option_values => [pink, x_large],
    :sku => "SJ-3630LPXL"
  },
  {
    :product => defend_jacket,
    :option_values => [purple, small],
    :sku => "SJ-3630PPS"
  },
  {
    :product => defend_jacket,
    :option_values => [purple, medium],
    :sku => "SJ-3630PPM"
  },
  {
    :product => defend_jacket,
    :option_values => [purple, large],
    :sku => "SJ-3630PPL"
  },
  {
    :product => defend_jacket,
    :option_values => [purple, x_large],
    :sku => "SJ-3630PPXL"
  },
  {
    :product => defend_jacket,
    :option_values => [sky_blue, small],
    :sku => "SJ-3630SBS"
  },
  {
    :product => defend_jacket,
    :option_values => [sky_blue, medium],
    :sku => "SJ-3630SBM"
  },
  {
    :product => defend_jacket,
    :option_values => [sky_blue, large],
    :sku => "SJ-3630SBL"
  },
  {
    :product => defend_jacket,
    :option_values => [sky_blue, x_large],
    :sku => "SJ-3630SBXL"
  },
  {
    :product => defend_lab_coat,
    :option_values => [ceil_blue, small],
    :sku => "SG-3660CBS"
  },
  {
    :product => defend_lab_coat,
    :option_values => [ceil_blue, medium],
    :sku => "SG-3660CBM"
  },
  {
    :product => defend_lab_coat,
    :option_values => [ceil_blue, large],
    :sku => "SG-3660CBL"
  },
  {
    :product => defend_lab_coat,
    :option_values => [ceil_blue, x_large],
    :sku => "SG-3660CBXL"
  },
  {
    :product => defend_lab_coat,
    :option_values => [pink, small],
    :sku => "SG-3660LPS"
  },
  {
    :product => defend_lab_coat,
    :option_values => [pink, medium],
    :sku => "SG-3660LPM"
  },
  {
    :product => defend_lab_coat,
    :option_values => [pink, large],
    :sku => "SG-3660LPL"
  },
  {
    :product => defend_lab_coat,
    :option_values => [pink, x_large],
    :sku => "SG-3660LPXL"
  },
  {
    :product => defend_lab_coat,
    :option_values => [purple, small],
    :sku => "SG-3660PPS"
  },
  {
    :product => defend_lab_coat,
    :option_values => [purple, medium],
    :sku => "SG-3660PPM"
  },
  {
    :product => defend_lab_coat,
    :option_values => [purple, large],
    :sku => "SG-3660PPL"
  },
  {
    :product => defend_lab_coat,
    :option_values => [purple, x_large],
    :sku => "SG-3660PPXL"
  },
  {
    :product => defend_lab_coat,
    :option_values => [sky_blue, small],
    :sku => "SG-3660SBS"
  },
  {
    :product => defend_lab_coat,
    :option_values => [sky_blue, medium],
    :sku => "SG-3660SBM"
  },
  {
    :product => defend_lab_coat,
    :option_values => [sky_blue, large],
    :sku => "SG-3660SBL"
  },
  {
    :product => defend_lab_coat,
    :option_values => [sky_blue, x_large],
    :sku => "SG-3660SBXL"
  },
  {
    :product => disposable_lab_coat,
    :option_values => [small],
    :sku => "SG-9003"
  },
  {
    :product => disposable_lab_coat,
    :option_values => [medium],
    :sku => "SG-9004"
  },
  {
    :product => disposable_lab_coat,
    :option_values => [large],
    :sku => "SG-9005"
  },
  {
    :product => disposable_lab_coat,
    :option_values => [x_large],
    :sku => "SG-9006"
  },
  {
    :product => disposable_lab_coat,
    :option_values => [xx_large],
    :sku => "SG-9007",
    :price => 21.85
  },
  {
    :product => disposable_lab_coat,
    :option_values => [xxx_large],
    :sku => "SG-9008",
    :price => 21.85
  },
  {
    :product => disposable_gown,
    :option_values => [gown_medium],
    :sku => "SG-1000"
  },
  {
    :product => disposable_gown,
    :option_values => [gown_large],
    :sku => "SG-1001"
  },
  {
    :product => eyewear,
    :option_values => [eyewear_clear],
    :sku => "GL-2019",
    :price => 6.20
  },
  {
    :product => eyewear,
    :option_values => [eyewear_fashion_clear],
    :sku => "GL-2021",
    :price => 5.85
  },
  {
    :product => eyewear,
    :option_values => [eyewear_protective],
    :sku => "GL-2020",
    :price => 23.95
  },
  {
    :product => eyewear,
    :option_values => [eyewear_protective_fashion],
    :sku => "GL-2022",
    :price => 5.40
  },
  {
    :product => orthobox,
    :option_values => [orthobox_denture],
    :sku => "OB-1000",
    :price => 8.95
  },
  {
    :product => orthobox,
    :option_values => [orthobox_retainer],
    :sku => "OB-2000",
    :price => 7.25
  }
]

Spree::Variant.create!(variants)

Spree::Variant.all.each do |variant|
  variant.stock_items.each do |stock_item|
    Spree::StockMovement.create(:quantity => 10, :stock_item => stock_item)
  end
end
