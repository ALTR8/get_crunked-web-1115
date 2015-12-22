require_relative 'config/environment'
require 'web/controllers/cocktails_controller'
require 'rack'

map '/cocktails' do
  run CocktailsController.new
end
