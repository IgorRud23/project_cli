class CLI 
  
  def start 
  puts "Welcome"
  Scraper.new.scrape_page
  menu 
  end 
  
  def menu
   navigation = SiteList.all
   puts navigation.inspect
  
  end 
    #binding.pry
end 