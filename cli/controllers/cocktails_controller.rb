class CocktailsController
  def index
    cocktails = Cocktail.all
    CocktailIndexView.call(cocktails)
  end

  def show
    puts "Which cocktail would you like to see?"
    choice = gets.to_i
    cocktail = Cocktail.find(choice)
    CocktailShowView.call(cocktail)
  end
end
