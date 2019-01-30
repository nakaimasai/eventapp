source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem 'rails', '~> 5.2.2'

gem 'will_paginate'

gem 'bootstrap-will_paginate'

gem 'faker'

gem 'carrierwave',             '1.2.2'

gem 'mini_magick'

gem 'jquery-rails'

gem 'bootstrap-sass'

gem 'bcrypt',         '3.1.11'

gem 'pg', '>= 0.18', '< 2.0'

gem 'puma', '~> 3.11'

gem 'sass-rails', '~> 5.0'

gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'

gem 'turbolinks', '~> 5'

gem 'jbuilder', '~> 2.5'

gem 'counter_culture'

gem 'bootsnap', '>= 1.1.0', require: false

group :production do
  gem 'fog', '1.42'
end

group :development, :test do

  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do

  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'

  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'rails-controller-testing', '1.0.2'
  gem 'minitest',                 '5.10.3'
  gem 'minitest-reporters',       '1.1.14'
  gem 'guard',                    '2.13.0'
  gem 'guard-minitest',           '2.4.4'

  #gem 'capybara', '>= 2.15'
  #gem 'selenium-webdriver'
  #gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
