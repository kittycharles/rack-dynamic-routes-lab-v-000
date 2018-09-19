class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if resp != req.path.match(/items/)
      resp.write "Route not Found"
    end

  end


end
