class CLI 
  
  def start 
  puts "Welcome"
  Scraper.new.scrape_page
  menu 
  end 
  
  def menu
    #x = Hash[(0...SiteList.headingArray.size).zip SiteList.headingArray]
    SiteList.all 
  end 
  
end 