require "http"

system "clear"
puts "Welcome to the weather app"

response = HTTP.get("URL+API")

weather_data = response.parse(:json)

pp weather_data

temperature = weather_data["main"]["temp"]

description =

  puts "Today in blah is #{temperature} degrees with #{description}."
