# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to override the default site name.
  # config.site_name = "Spree Demo Site"
  country = Spree::Country.find_by_name('India')
  config.default_country_id = country.id if country.present?
  config.show_zero_stock_products = false
  config.allow_guest_checkout= false

end

Spree.user_class = "Spree::LegacyUser"
Spree::Auth::Config[:registration_step] = true;

