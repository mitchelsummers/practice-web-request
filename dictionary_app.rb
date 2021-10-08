require "http"
system "clear"
puts "Enter a word for the definition"
word = gets.chomp
response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=API-KEY")
definition = response.parse(:json)
pp definition
p definition[1]["text"]
# p definition[0]["textProns"]
