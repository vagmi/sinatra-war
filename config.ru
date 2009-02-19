require 'rubygems'
# Demo app built for 0.9.x
gem 'sinatra', '~> 0.9' 
require './myapp'
set :run, false
set :environment, :development
run Sinatra::Application
