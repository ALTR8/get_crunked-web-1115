class CocktailsController
  def call(env)
    request = Rack::Request.new(env)
    case
    when request.path == "/cocktails" && request.get?
      index
    when request.path =~ %r{/cocktails/\d+} && request.get?
      id = request.path.scan(/\/cocktails\/(\d+)/).flatten.first
      show(id)
    end
  end

  def index
    @cocktails = Cocktail.all
    response = Tilt.new('web/views/cocktails/index.erb').render(self)
    Rack::Response.new(response)
  end

  def show(id)
    @cocktail = Cocktail.find(id)
    response = Tilt.new('web/views/cocktails/show.erb').render(self)
    Rack::Response.new(response)
  end
end
