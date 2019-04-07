class Scraper 
  def scrape_page
    html = open("https://www.lifewire.com/cool-websites-to-look-at-when-bored-3486362")
  doc = Nokogiri::HTML(html)
  doc.css("div.comp.article-content").each do |site|
  binding.pry
end 
end
end 