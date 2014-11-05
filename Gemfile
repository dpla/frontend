source 'https://rubygems.org'

gem 'rails', '~> 3.2.17'
gem 'pg', :require => 'pg'

group :assets do
  gem 'sass-rails', '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'therubyracer'
  gem 'jquery-rails'
  gem 'rails-backbone'
end

gem 'haml'
gem 'haml-rails'
gem 'simple_form'
gem 'breadcrumbs_on_rails'
gem 'kaminari'
gem 'navigasmic'
gem 'carrierwave'
gem 'rmagick'
gem 'page_title_helper'
gem 'dalli'
gem 'httparty'
gem 'elastictastic'
gem 'devise'
gem 'rails_config'
gem "leaflet-rails", "~> 0.5.0"
gem "leaflet-markercluster-rails", "~> 0.2.1"
gem 'google-analytics-rails'
gem 'meta-tags'
gem 'turnout'

group :development do
  gem 'thin'
  gem 'capistrano-deploy', :require => false
  gem 'quiet_assets'
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :test, :development do
  gem "rspec-rails", "~> 2.0"
  gem 'shoulda'
  gem 'shoulda-matchers'
  gem 'awesome_print'
end
   
group :production do
  gem 'unicorn'
end

group :dpla_branding do
  gem 'dpla_frontend_assets', git: 'git@github.com:dpla/frontend-assets.git'
end
