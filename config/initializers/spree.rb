# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  config.track_inventory_levels = false
  config.logo = 'logo/deals_dental.png'
  config.admin_interface_logo = config.logo
  config.products_per_page = 24
  config.tax_using_ship_address = false
  config.mails_from = 'orders@dealsdental.com'
end

Spree.user_class = "Spree::User"
