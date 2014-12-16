namespace :dealsdental do
  desc "Seeds the inital shop configuration (needed for every environment)"
  task :basic_data do
    load "#{Rails.root}/db/deals_dental/basic_data.rb"
  end

  desc "Seeds products for a new developer environment"
  task :development_data do
    load "#{Rails.root}/db/deals_dental/development_data.rb"
  end

  desc "Seeds initial product data"
  task :production_data do
    load "#{Rails.root}/db/deals_dental/initial_load_option_types.rb"
    load "#{Rails.root}/db/deals_dental/import_production_data.rb"
  end
end
