require_relative 'config/environment'
Dir["web/controllers/*.rb"].each {|f| require f}

map "/" do
  run HomeController.new
end

map "/cocktails" do
  run CocktailsController.new
end

map "/ingredients" do
  run IngredientsController.new
end
