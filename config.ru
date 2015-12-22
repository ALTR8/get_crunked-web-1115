require_relative 'config/environment'
Dir["web/controllers/*.rb"].each {|f| require f}
# Some object
# method called `call` that takes one argument

# if they go to / Show them a link to the cocktails page
# if they go to /cocktails show them a list of cocktails
# if they go to /cocktails/7 show them a cocktail
# class App
#   def call(env)
#     request = Rack::Request.new(env)
#     if request.path == '/' and request.get?
#       home_controller = HomeController.new
#       home_controller.index
#     elsif request.path == '/cocktails' and request.get?
#       cocktails_controller = CocktailsController.new
#       cocktails_controller.index
#     else
#       Rack::Response.new('File not found', 404)
#     end
#   end
# end
#
# run App.new

map "/" do
  run HomeController.new
end

map "/cocktails" do
  run CocktailsController.new
end
