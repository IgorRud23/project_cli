class Scraper 
  
  def scrape_page ()
    html = open("https://www.lifewire.com/cool-websites-to-look-at-when-bored-3486362")
  doc = Nokogiri::HTML(html)
  #TODO handle error 
  headingList = doc.css("h3").children.map { |name| name.text}.select { |title|  title.length > 1 }
  
  @@site_info = []
  site_info_try = doc.css(".comp.mntl-sc-block.mntl-sc-block-html").map do |p|
    final_info = p.text.strip
  @@site_info << final_info 

#binding.pry 





SiteList.new(headingList)
end 
end

end 