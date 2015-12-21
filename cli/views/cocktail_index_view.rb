class CocktailIndexView
  def self.call(cocktails)
    cocktails.each.with_index(1) do |cocktail, index|
      puts "#{index}. #{cocktail.name}"
    end
  end
end
