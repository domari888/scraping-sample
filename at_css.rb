require 'nokogiri'
require 'open-uri'
url = 'https://www.yahoo.co.jp/'

html = URI.open(url).read
doc = Nokogiri::HTML.parse(html)

doc.at_css('div#ToolList ul').css('li').each do |li|
  puts li.content.strip
end
