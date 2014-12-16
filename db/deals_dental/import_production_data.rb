require 'csv'
require File.expand_path('../../../config/environment', __FILE__)

import_file = File.expand_path('initial_load.csv', File.dirname(__FILE__))

if !File.file?(import_file)
  raise "Import file not found!"
end

Rails.logger.level = 5

tax_category = Spree::TaxCategory.find_by_name!("Default")
shipping_category = Spree::ShippingCategory.find_by_name!("Default")

default_attrs = {
  :tax_category => tax_category,
  :shipping_category => shipping_category,
  :description => "",
  :available_on => Time.zone.now
}

def titleize(title)
  return "XX-Large" if title == "XX-LARGE"
  return "XXX-Large" if title == "XXX-LARGE"
  return "16 Oz Bottle w/Pump" if title == "16 OZ BOTTLE W/PUMP"
  return "HVE Screens" if title == "HVE SCREENS"
  return "Hand Sanitizer Spray - 400 ml" if title == "HAND SANITIZER SPRAY - 400 ML"
  return "'Hard' Bite Unflavored - Fast Set" if title == '"HARD" BITE UNFLAVORED - FAST SET'
  return "Quadrant UL/LR Perforated" if title =="QUADRANT UL/LR PERFORATED"
  return "Quadrant UR/LL Perforated" if title =="QUADRANT UR/LL PERFORATED"
  return "Quadrant UL/LR Solid" if title =="QUADRANT UL/LR SOLID"
  return "Quadrant UR/LL Solid" if title =="QUADRANT UR/LL SOLID"
  return "N/S Edge - Clear in Disp. Box" if title == "N/S EDGE - CLEAR IN DISP. BOX"
  return "N/S Edge - Blue in Disp. Box" if title == "N/S EDGE - BLUE IN DISP. BOX"
  return "N/S Edge - Clear no Box" if title == "N/S EDGE - CLEAR NO BOX"
  return "N/S Edge - Blue no Box" if title == "N/S EDGE - BLUE NO BOX"
  return '3.5" X 10" Box of 1000 Pouches' if title == '3.5" X 10" BOX OF 1000 POUCHES'
  return "12x12 - 1000 Pack" if title == "12X12 - 1000 PACK"
  return "15x15 - 1000 Pack" if title == "15X15 - 1000 PACK"
  return "20x20 - 500 Pack" if title == "20X20 - 500 PACK"
  return "24x24 - 500 Pack" if title == "24X24 - 500 PACK"
  return "30x30 - 250 Pack" if title == "30X30 - 250 PACK"
  return "Teal (Green) 6.5mm" if title == "TEAL (GREEN) 6.5MM"
  return "Yellow 4.2mm" if title == "YELLOW 4.2MM"
  return "Pink 5.4mm" if title == "PINK 5.4MM"
  return "Purple 7.5mm" if title == "PURPLE 7.5MM"
  return "For HP Cartridge - 50ml" if title == "FOR HP CARTRIDGE - 50ML"
  return "Large for use with #VP-8104" if title == "LARGE FOR USE WITH #VP-8104"
  return "Small for use with #VP-8104" if title == "SMALL FOR USE WITH #VP-8104"

  title.split('-').map do |part|
    if part.chars.count == part.bytes.count
      part.titleize
    else
      part.split(' ').map { |word| word.mb_chars.titleize }.join(' ')
    end
  end.join('-')
end

def option_types_from_value(values)
  values.split("||").map do |value|
    Spree::OptionValue.find_by_name!(value.strip).option_type
  end
end

def option_values(values)
  values.split("||").map do |value|
    Spree::OptionValue.find_by_name!(value.strip)
  end
end

#Spree::Product.delete_all
#Spree::Variant.delete_all

is_one_variant_item = false;
product = nil
CSV.foreach(import_file) do |row|
  if row[1].nil?
    name = row.first
    price = row.last

    if price.nil?
      puts "single variant item " + titleize(name)

      is_one_variant_item = true
      product = Spree::Product.create!(default_attrs.merge({
        :name => name,
        :price => 0
      }))
      else
      puts "item with variants " + titleize(name)

      product = Spree::Product.create!(default_attrs.merge({
        :name => name,
        :price => price
      }))
    end
  else
    sku, value, _, _, _, _, price = row

    if is_one_variant_item
      puts "updating existing single variant item"

      product.update_attributes!({
        :description => titleize(value),
        :sku => sku,
        :price => price
      })
      is_one_variant_item = false
    else
      puts "Adding variant: " + titleize(value)

      product.update_attributes!({
        :option_types => option_types_from_value(titleize(value)),
      })

      variant = Spree::Variant.create!({
        :product => product,
        :option_values => option_values(titleize(value)),
        :sku => sku
      })
    end
  end
end

