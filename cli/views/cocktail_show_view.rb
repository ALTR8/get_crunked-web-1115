class CocktailShowView
  def self.call(cocktail)
    puts cocktail.name
    puts "=" * 40
    puts cocktail.instructions
    puts
    cocktail.proportions.each do |proportion|
      puts "#{proportion.amount}".ljust(10, ".") + proportion.ingredient.name
    end
    puts
    puts cocktail.source
  end
end
