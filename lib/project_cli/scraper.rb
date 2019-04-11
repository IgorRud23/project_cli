class Scraper 
  
  def scrape_page ()
    html = open("https://www.lifewire.com/cool-websites-to-look-at-when-bored-3486362")
  doc = Nokogiri::HTML(html)
  #TODO handle error 
  
  
  headings = doc.css("h3").children.map { |name| name.text}.select { |title|  title.length > 1 }
  
  links = doc.css("h3").children.map { |name| name["href"]}.compact
    
    articleList = doc.css(".list-sc-item").children.map { |element| element }.select { |element| element.name == "div" }.map { |el| el.text }.join.split(/\d+\n.*\s\d+/)
    
    articleList.shift
    headingList = articleList.map.with_index {|article, index|  {title: headings[index], article: article, link: links[index]}}

    


binding.pry 



SiteList.new(headingList)


end

end 