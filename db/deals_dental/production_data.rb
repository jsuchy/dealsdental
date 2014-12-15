require File.expand_path('../../../config/environment', __FILE__)

tax_category = Spree::TaxCategory.find_by_name!("Default")
shipping_category = Spree::ShippingCategory.find_by_name!("Default")

puts "Adding products"

color_type = Spree::OptionType.find_by_name!("Color")
size_type = Spree::OptionType.find_by_name!("Size")
cap_size_type = Spree::OptionType.find_by_name!("Cap Size")
gown_size_type = Spree::OptionType.find_by_name!("Gown Size")
eyewear_type = Spree::OptionType.find_by_name!("Eyewear Type")
ortho_box_type = Spree::OptionType.find_by_name!("Ortho Box Type")
sponge_type = Spree::OptionType.find_by_name!("Sponge Type")
cotton_tip_applicator_type = Spree::OptionType.find_by_name!("Cotton Tip Applicator Size")
cup_color_type = Spree::OptionType.find_by_name!("Cup Color")
dental_needle_type = Spree::OptionType.find_by_name!("Dental Needle Type")
headrest_cover_size_type = Spree::OptionType.find_by_name!("Headrest Cover Size")
sponge_size_type = Spree::OptionType.find_by_name!("Sponge Size")
dispensing_tip_type = Spree::OptionType.find_by_name!("Dispensing Tip Type")
cleaning_wipe_type = Spree::OptionType.find_by_name!("Cleaning Wipe Type")
loation_soap_type = Spree::OptionType.find_by_name!("Lotion Soap Type")
evacuation_trap_type = Spree::OptionType.find_by_name!("Evacuation Trap Type")
glove_size_type = Spree::OptionType.find_by_name!("Glove Size")
impression_material_type = Spree::OptionType.find_by_name!("Impression Material")
putty_material_type = Spree::OptionType.find_by_name!("Putty Material Type")
bite_registration_material_type = Spree::OptionType.find_by_name!("Bite Registration Material Type")
crown_and_bride_material_type = Spree::OptionType.find_by_name!("Crown and Bridge Material Type")
impression_tray_type = Spree::OptionType.find_by_name!("Impression Tray")
bite_tray_type = Spree::OptionType.find_by_name!("Bite Tray Type")
air_water_syringe_type = Spree::OptionType.find_by_name!("Air/Water Syringe Type")
micro_applicator_type = Spree::OptionType.find_by_name!("Micro Applicator Type")
saliva_ejector_type = Spree::OptionType.find_by_name!("Saliva Ejector")
aspirator_tip_type = Spree::OptionType.find_by_name!("Aspirator Tip Type")
mask_type = Spree::OptionType.find_by_name!("Mask Type")
prophy_paste_type = Spree::OptionType.find_by_name!("Prophy Paste Type")
prophy_angle_type = Spree::OptionType.find_by_name!("Prophy Angle Type")
barrier_film_type = Spree::OptionType.find_by_name!("Barrier Film Type")
tray_sleeve_type = Spree::OptionType.find_by_name!("Tray Sleeve Type")
xray_sensor_sleeve_type = Spree::OptionType.find_by_name!("X-Ray Sensor Sleeve Type")
headrest_cover_type = Spree::OptionType.find_by_name!("Headrest Cover Type")
barrier_envelope_type = Spree::OptionType.find_by_name!("Barrier Envelope Type")
sterilization_pouch_type = Spree::OptionType.find_by_name!("Sterilization Pouch Size")
sterilization_tubing_type = Spree::OptionType.find_by_name!("Sterilization Tubing Type")
sterilization_indicator_type = Spree::OptionType.find_by_name!("Sterilization Indicator Size")
sterilization_wrap_type = Spree::OptionType.find_by_name!("Sterilization Wrap Size")
spore_testing_service_type = Spree::OptionType.find_by_name!("Spore Testing Service Type")
mixing_tip_type = Spree::OptionType.find_by_name!("Mixing Tip Type")
dispensing_gun_type = Spree::OptionType.find_by_name!("Dispensing Gun Type")
oral_tip_type = Spree::OptionType.find_by_name!("Oral Tip Type")
crown_and_bridge_tip_type = Spree::OptionType.find_by_name!("Crown and Bridge Tip Type")




default_attrs = {
  :tax_category => tax_category,
  :shipping_category => shipping_category,
  :description => "",
  :available_on => Time.zone.now
}

products = [
  {
    :name => 'Bouffant Caps (Non-Sterile - 100/box)',
    :option_types => [cap_size_type],
    :price => 8.95
  },
  {
    :name => 'Shoe Covers (Non-Sterile - 100/box)',
    :description => "Blue - Non-Skid - One Size Fits All",
    :sku => "SC-5000",
    :price => 9.95
  },
  {
    :name => 'Defend Plus Jacket - 10/Bag',
    :option_types => [color_type, size_type],
    :price => 21.95
  },
  {
    :name => 'Defend Plus Full Length Lab Coat - 10/Bag',
    :option_types => [color_type, size_type],
    :price => 22.95
  },
  {
    :name => 'Disposable Lab Coats - 10/Bag',
    :option_types => [size_type],
    :price => 19.95
  },
  {
    :name => 'Disposable Tie-Back Protective Gowns - 10/Bag',
    :option_types => [gown_size_type],
    :price => 10.95
  },
  {
    :name => 'Protective Eyewear',
    :option_types => [eyewear_type],
    :price => 6.20
  },
  {
    :name => 'Ortho Boxes (Assorted Colors) - 12/Box',
    :option_types => [ortho_box_type],
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

small = Spree::OptionValue.find_by_name!('Small')
medium = Spree::OptionValue.find_by_name!('Medium')
large = Spree::OptionValue.find_by_name!('Large')
x_large = Spree::OptionValue.find_by_name!('X-Large')
xx_large = Spree::OptionValue.find_by_name!('XX-Large')
xxx_large = Spree::OptionValue.find_by_name!('XXX-Large')

ceil_blue = Spree::OptionValue.find_by_name!('Ceil Blue')
sky_blue = Spree::OptionValue.find_by_name!('Sky Blue')
pink = Spree::OptionValue.find_by_name!('Pink')
purple = Spree::OptionValue.find_by_name!('Purple')

gown_medium = Spree::OptionValue.find_by_name!('Medium - 40" Length')
gown_large = Spree::OptionValue.find_by_name!('Large - 48" Length')

eyewear_clear = Spree::OptionValue.find_by_name!("Clear")
eyewear_fashion_clear = Spree::OptionValue.find_by_name!("Fashion Style - Clear")
eyewear_protective = Spree::OptionValue.find_by_name!("U.V. Protective")
eyewear_protective_fashion = Spree::OptionValue.find_by_name!("U.V. Protective - Fashion")

orthobox_denture = Spree::OptionValue.find_by_name!("Denture Box")
orthobox_retainer = Spree::OptionValue.find_by_name!("Retainer Box")

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
