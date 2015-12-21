class Router
  def self.start
    puts "Select an option"
    puts "1. Show all cocktails"
    puts "2. Show a specific cocktail"

    choice = gets.to_i
    case choice
    when 1
      cocktails_controller = CocktailsController.new
      cocktails_controller.index
    when 2
      cocktails_controller = CocktailsController.new
      cocktails_controller.show
    else
      puts "Invalid Selection"
    end
    start
  end
end
