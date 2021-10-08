require "http"
system "clear"
word = 0
if word != "q"
  puts "Enter a word for the definition"
  word = gets.chomp
  response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=API-KEY")
  definition = response.parse(:json)
  pp definition
  p definition[1]["text"]
  # p definition[0]["textProns"]
else
  break
end

response = HTTP.get("https://api.wordnik.com/v4/word.json/#{input_word}/pronunciations?useCanonical=false&limit=50&api_key=YOURAPIKEY")
pronunciations = response.parse(:json)
i = 0
puts "here is pronunciation"
pronunciations.length do
  pronunciation = pronunciations[i]
  puts pronunciation["raw"]
  i += 1
end
