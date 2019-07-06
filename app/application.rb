class Application 
  def call(env) 
    resp = Rack::Response.new 
    utc = Time.new
    offset = 25200
    time = utc - offset
    if time > 120000 
      resp.write "Good Afternoon!" 
    else 
      resp.write "Good Morning!" 
    end 
    resp.finish
  end 
end 