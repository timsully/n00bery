require 'open-uri'
require 'nokogiri'

url = "https://news.ycombinator.com/"

document = open(url)
content = document.read
parsed_content = Nokogiri::HTML(content)

# Grabs all title on HTML page
puts parsed_content.css('.title').css('.storylink').first