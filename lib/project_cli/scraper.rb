class Scraper 
  
  def scrape_page ()
    html = open("https://www.lifewire.com/cool-websites-to-look-at-when-bored-3486362")
  doc = Nokogiri::HTML(html)
  
  headingList = doc.css("h3").children.map { |name| name.text}.select { |title|  title.length > 1 }
  
  site_info = doc.css(".comp.mntl-sc-block.mntl-sc-block-html")

binding.pry 





SiteList.new(headingList)

end

end 