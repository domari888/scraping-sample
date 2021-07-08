# スクレイピング
require 'nokogiri'
# URL にアクセス
require 'open-uri'
# スクレイピングする URL を指定
url = '各自 URL を指定'

# # -- URL の情報を取得 --
# content = Nokogiri::HTML(open(url),nil, "utf-8")
# puts content

# nokogiri で指定した URL から HTML を切り分け
doc = Nokogiri::HTML(open(url))

# -- cssノードを取得 --
doc.css('h2').each do |link|
  puts link.content
end

# -- xpath のノードを取得 --
doc.xpath('//nav//ul//li/a', '//article//h2').each do |link|
  puts link.content
end

# -- ミックスされたノードを取得--
doc.search('nav ul.menu li a', '//article//h2').each do |link|
  puts link.content
end