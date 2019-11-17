class Application
 
    def call(env)
      resp = Rack::Response.new
   
      time = Time.now.to_s
      time = time.split(" ")
      time = time[1].split(":")
      time = time[0].to_i
      
   
      if time <= 12
        resp.write "Good Morning!"
      else
        resp.write "Good Afternoon!"
      end
   
      resp.finish
    end
   
  end