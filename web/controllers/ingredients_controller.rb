class IngredientsController < Sinatra::Base
  set :root, File.join(File.dirname(__FILE__), "..")
  get '' do # /ingredients
    @ingredients = Ingredient.all
    erb :"ingredients/index"
  end

  get '/:id' do
    @ingredient = Ingredient.find(params["id"])
    erb :"ingredients/show"
  end
end
