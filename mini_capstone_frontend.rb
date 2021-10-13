require "http"
response = HTTP.get("http://localhost:3000/products_all")
products = response.parse

pp products