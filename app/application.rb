class Application 
  def call(env) 
    resp = Rack::Response.new 
    utc = Time.new
    
    if time > 120000 
      resp.write "Good Afternoon!" 
    else 
      resp.write "Good Morning!" 
    end 
    resp.finish
  end 
end 