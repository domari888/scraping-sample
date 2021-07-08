# スクレイピング
require 'nokogiri'
# URL にアクセス
require 'open-uri'
# スクレイピングする URL を指定
url = 'https://www.yahoo.co.jp/'

# nokogiri で指定した URL から HTML を切り分け
html = URI.open(url).read
doc = Nokogiri::HTML.parse(html)

# doc = Nokogiri::HTML(URI.open(url))  でも可能？

pp doc
