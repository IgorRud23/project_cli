class Scraper 
  def scrape_page
    html = open("https://www.lifewire.com/cool-websites-to-look-at-when-bored-3486362")
  doc = Nokogiri::HTML(html)
  doc.css("div#list-sc-item_1-0.comp.mntl-sc-list-item.list-sc-item.mntl-block").each do |site|

end 
end
end 