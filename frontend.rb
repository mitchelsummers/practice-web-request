require "http"
system "clear"
puts "Choose an option"
puts "[1] Random fortune"
puts "[2] Lotto numbers"
puts "[3] page counter"

input_option = gets.chomp
if input_option == "1"
  response = HTTP.get("http://localhost:3000/fortune_path")
  fortune = response.parse["fortune"]
  puts fortune
elsif input_option == "2"
  response = HTTP.get("http://localhost:3000/lotto_path")
  lotto = response.parse["lotto"]
  puts lotto
else input_option == "3" end
