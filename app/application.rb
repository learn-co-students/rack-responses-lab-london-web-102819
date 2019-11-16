class Application

  def call(env)
    resp = Rack::Response.new
    current_time = Time.now.hour.to_i
    
    if current_time < 12 && current_time >= 0
      resp.write "Good Morning"
    else
      resp.write "Good Afternoon"
    end

    resp.finish
  end

end