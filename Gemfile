#You can add lacal gems with
# gem "my_gem", :path => "/home/www/gems/my_gem"
#you must remove the path in production or if you change server and replace with:
# git "git@10.2.252.240:my_gem.git"

source "http://rubygems.org"

gem  'rails', '~>3.0.15'
gem 'mysql2', '< 0.3'

group :development, :test do
  gem "ruby-debug"
  gem "capybara", ">= 0.4.0"
  gem "sqlite3"
  gem "single_test"
  gem "rspec-rails", "~> 2.0"
end

gemspec

