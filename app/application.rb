class Application 
  def call(env) 
    resp = Rack::Response.new 
    utc = Time.new
    offset = 25200
    time = utc - offset
    t_num = time.to_s.split(" ")[1].split(":").join("").to_i
    if t_num > 120000 
      resp.write "Good Afternoon!" 
    else 
      resp.write "Good Morning!" 
    end 
    resp.finish
  end 
end 