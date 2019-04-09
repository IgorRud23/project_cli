


class Scraper 
  
  def scrape_page ()
    html = open("https://www.lifewire.com/cool-websites-to-look-at-when-bored-3486362")
  doc = Nokogiri::HTML(html)
  
  
  # listOfTitles
  # list = doc.at("#list-sc_1-0")
  # list.search("div").each do |div|
  #   listOfTitles = div.search('h3').map { |name| name.text }
  # doc.css("#list-sc_1-0").css("div").css("h3")each do |el|
  # doc.css("#list-sc_1-0 div h3")each do |el|
  
  headingArray = doc.css("h3").children.map { |name| name.text}.select { |title|  title.length > 1 }
  
  headingList = Hash[(0...headingArray.size).zip headingArray]

 
# info_one = site.css("div#mntl-sc-block_2-0-2").text.strip
# info_two = site.css("div#mntl-sc-block_2-0-3").text.strip
SiteList.new(headingList)

end

end 