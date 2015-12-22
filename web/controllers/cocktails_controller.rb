class CocktailsController
  def call(env)
    index
  end

  def index
    @cocktails = Cocktail.all
    template = Tilt.new('web/views/cocktails/index.erb')
    merged = template.render(self)

    Rack::Response.new(merged)
  end
end
