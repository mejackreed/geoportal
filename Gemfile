source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.6'
gem 'sqlite3', '~> 1.3', '< 1.4'
gem 'mysql2', '~> 0.5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'minitest-rails-capybara', '~>3.0.0'

  # RSpec/SolrWrapper
  gem 'capybara'
  gem 'capybara-selenium'
  gem 'capybara-screenshot'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'rspec-rails', '~> 3.5'
  gem 'spring'
end

group :development do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'web-console'
  gem 'puma'
  gem 'foreman'
  gem 'letter_opener'
end

gem 'blacklight', '~> 7.0'
gem 'blacklight_advanced_search', git: 'https://github.com/projectblacklight/blacklight_advanced_search.git', :branch => 'master'
gem 'blacklight_range_limit', '~> 7.0.0'
gem 'chosen-rails' #  jquery multiselect plugin for advanced search
gem 'bootstrap', '~> 4.0'
gem 'popper_js'
gem 'twitter-typeahead-rails', '0.11.1.pre.corejavascript'
gem 'geoblacklight', '~> 2.0.0'
gem 'geoblacklight_sidecar_images', git: 'https://github.com/ewlarson/geoblacklight_sidecar_images.git', :branch => 'geoportal-legacy'
gem 'statesman', '~> 3.4.1'
gem 'sidekiq', '~> 5.1.3'
gem 'sidekiq-failures', '~> 1.0.0'
gem 'down', '~> 4.4'
gem 'addressable', '~> 2.5.0'
gem 'inline_svg', '~> 1.3.0'
# gem 'geoblacklight-icons', '~> 1.2.0'
gem 'handlebars_assets', '~> 0.23.0'
gem 'geoblacklight-icons', git: 'https://github.com/geoblacklight/geoblacklight-icons.git', :ref => '84da81140e7ef93e7241b7753c01d7f709216f2b'
gem 'solr_wrapper', git: 'https://github.com/cbeer/solr_wrapper.git', branch: 'master'

gem 'rsolr', '>= 1.0'
gem 'jquery-rails'
gem 'devise'
gem 'devise-guests', '~> 0.6'

gem 'haml'

# Dotenv
gem 'dotenv-rails'

# Static Pages
gem 'high_voltage', '~> 3.0.0'
gem 'jekyll'
gem 'jekyll-feed'

# Feedback
gem 'pointless_feedback'
gem 'whenever', '~> 0.9.0', require: false
gem 'sitemap_generator', '~> 6.0.2'
gem 'exception_notification', '~> 4.3.0'

group :test do
  gem 'minitest-rails-capybara', '~>3.0.0'
  gem 'chromedriver-helper'
  gem 'capybara-selenium'
  gem 'm', '~> 1.5.0'
  gem 'minitest-ci', '~> 3.4.0'
end
