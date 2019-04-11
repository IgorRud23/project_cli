class Scraper 
  
  def scrape_page ()
    html = open("https://www.lifewire.com/cool-websites-to-look-at-when-bored-3486362")
  doc = Nokogiri::HTML(html)
  #TODO handle error 
  headingList = doc.css("h3").children.map { |name| name.text}.select { |title|  title.length > 1 }
  
    articleList = doc.css(".list-sc-item").children.map { |element| element }.select { |element| element.name == "div" }.map { |el| el.text }.join.split(/\d+\n.*\s\d+/)
articleList.shift
  articleList.each_with_index do |name, index|
        puts "#{index+1}. #{name}" 


SiteList.new(headingList)

end 
end

end 