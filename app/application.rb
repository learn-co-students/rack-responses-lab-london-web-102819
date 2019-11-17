require "pry"
class Application

    def call(env)
        resp = Rack::Response.new
        greet_1 = "Good Morning!"
        greet_2 = "Good Afternoon!"
        
        t = Time.now
        # binding.pry
        # puts t
        if t.hour >= 00 && t.hour<12
            resp.write greet_1
        else 
            resp.write greet_2
        end
        resp.finish
    end
end