require File.expand_path('../../../config/environment', __FILE__)
require 'spree/gateway/stripe_gateway'

puts "Creating payment gateways"
Spree::Gateway::StripeGateway.create!({
  :name => "Credit Card",
  :description => "Pay by credit card.",
  :active => true,
  :environment => "development"
})

Spree::Gateway::StripeGateway.create!({
  :name => "Credit Card",
  :description => "Pay by credit card.",
  :active => true,
  :environment => "production"
})

puts "Creating default shipping category"
Spree::ShippingCategory.create!(:name => "Default")

puts "Creating default tax category"
Spree::TaxCategory.create!(:name => "Default")

puts "Creating tax rate"
north_america = Spree::Zone.find_by_name!("North America")
default_category = Spree::TaxCategory.find_by_name!("Default")
tax_rate = Spree::TaxRate.create(
  :name => "North America",
  :zone => north_america,
  :amount => 0.05,
  :tax_category => default_category)
tax_rate.calculator = Spree::Calculator::DefaultTax.create!
tax_rate.save!

puts "Creating default stock location"
location = Spree::StockLocation.first_or_create! name: 'Default'
location.active = true
location.default = true
location.country =  Spree::Country.where(iso: 'US').first
location.save!


puts "Creating shipping methods"
tax_category = Spree::TaxCategory.find_by_name!("Default")
shipping_category = Spree::ShippingCategory.find_by_name!("Default")
north_america = Spree::Zone.find_by_name!("North America")

Spree::ShippingMethod.create!([
  {
    :name => "UPS Ground (USD)",
    :zones => [north_america],
    :calculator => Spree::Calculator::Shipping::FlatRate.create!,
    :shipping_categories => [shipping_category]
  },
  {
    :name => "UPS One Day (USD)",
    :zones => [north_america],
    :calculator => Spree::Calculator::Shipping::FlatRate.create!,
    :shipping_categories => [shipping_category]
  },
  {
    :name => "UPS Two Day (USD)",
    :zones => [north_america],
    :calculator => Spree::Calculator::Shipping::FlatRate.create!,
    :shipping_categories => [shipping_category]
  }
])

{
  "UPS Ground (USD)" => [5, "USD"],
  "UPS Two Day (USD)" => [10, "USD"],
  "UPS One Day (USD)" => [15, "USD"]
}.each do |shipping_method_name, (price, currency)|
  shipping_method = Spree::ShippingMethod.find_by_name!(shipping_method_name)
  shipping_method.calculator.preferences = {
    amount: price,
    currency: currency
  }
  shipping_method.calculator.save!
  shipping_method.save!
end

