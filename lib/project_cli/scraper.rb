class Scraper 
  def scrape_page
    html = open("https://www.lifewire.com/cool-websites-to-look-at-when-bored-3486362")
  doc = Nokogiri::HTML(html)
  doc.css("div#list-sc-item_1-0.comp.mntl-sc-list-item.list-sc-item.mntl-block").each do |site|
binding.pry 
site_heading = site.css("a.mntl-sc-block-heading__link").text 
about_about_one = site.css("div#mntl-sc-block_2-0-2").text.strip
about_about_two = 
end 
end
end 