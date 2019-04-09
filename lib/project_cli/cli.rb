class CLI 
  
  def start 
  puts "Welcome"
  Scraper.new.scrape_page
  menu 
  end 
  
  def menu
   navigation = SiteList.all[0] 
   puts navigation 
  end 
    #binding.pry
end 