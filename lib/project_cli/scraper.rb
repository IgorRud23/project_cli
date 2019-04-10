


class Scraper 
  
  def scrape_page ()
    html = open("https://www.lifewire.com/cool-websites-to-look-at-when-bored-3486362")
  doc = Nokogiri::HTML(html)
  
  headingList = doc.css("h3").children.map { |name| name.text}.select { |title|  title.length > 1 }
 
# info_one = site.css("div#mntl-sc-block_2-0-2").text.strip
# info_two = site.css("div#mntl-sc-block_2-0-3").text.strip
SiteList.new(headingList)

end

end 