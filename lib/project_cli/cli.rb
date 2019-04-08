class CLI 
  
  # def start 
  #   menu 
  #   puts "Welcome"
     
  #   Scraper.new.scrape_page
   
  # end 
  
  def menu
    Scraper.new.scrape_page
    SiteList.all.each.with_index(1) do |site_name, index|
      puts "#{index}. #{site_name.heading}"
    end 
  end 
  
end 