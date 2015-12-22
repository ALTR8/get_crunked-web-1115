class CocktailsController
  def call(env)
    request = Rack::Request.new(env)
    case
    when request.path == '/cocktails'  && request.get?
      index
    when request.path =~ %r{/cocktails/\d+}  && request.get?
      id = request.path.scan(%r{/cocktails/(\d+)}).flatten.first
      show(id)
    else
      Rack::Response.new("File Not Found", 404)
    end
  end

  def index
    @cocktails = Cocktail.all
    template = Tilt.new('web/views/cocktails/index.erb')
    merged = template.render(self)

    Rack::Response.new(merged)
  end

  def show(id)
    @cocktail = Cocktail.find(id)
    template = Tilt.new('web/views/cocktails/show.erb')
    merged = template.render(self)

    Rack::Response.new(merged)
  end
end
