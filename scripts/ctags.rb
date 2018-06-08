require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'

  gem 'ripper-tags'
end

`bundle exec ripper-tags --help`
