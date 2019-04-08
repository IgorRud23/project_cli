class Scraper 
  def scrape_page
    html = open("https://www.lifewire.com/cool-websites-to-look-at-when-bored-3486362")
  doc = Nokogiri::HTML(html)
  doc.css("div#list-sc-item_1-0.comp.mntl-sc-list-item.list-sc-item.mntl-block").each do |site|
#binding.pry 
heading = site.css("a.mntl-sc-block-heading__link").text 
info_one = site.css("div#mntl-sc-block_2-0-2").text.strip
info_two = site.css("div#mntl-sc-block_2-0-3").text.strip
SiteList.new(heading)
end
end
end 