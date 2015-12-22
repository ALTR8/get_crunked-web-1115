class HomeController
  def call(env)
    request = Rack::Request.new(env)
    if request.get? && request.path == '/'
      index
    else
      Rack::Response.new('File not found', 404)
    end
  end

  def index
    Rack::Response.new('<a href="/cocktails">Cocktails</a>')
  end
end
