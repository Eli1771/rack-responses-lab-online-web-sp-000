class Application 
  def call(env) 
    resp = Rack::Response.new 
    time = Time.new.to_s.split(" ")[1].split(":").join("").to_i
    resp.finish
  end 
end 