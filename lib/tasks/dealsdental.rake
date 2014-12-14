namespace :dealsdental do
  desc "Seeds the inital shop configuration (needed for every environment)"
  task :basic_data do
    load "#{Rails.root}/db/deals_dental/basic_data.rb"
  end

  desc "Seeds products for a new developer environment"
  task :development_data do
    load "#{Rails.root}/db/deals_dental/development_data.rb"
  end
end
