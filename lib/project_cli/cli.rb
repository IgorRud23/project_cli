class CLI 
  
  def start 
    "You bored? I knew you bord, that's why you here. Don't hold yourself, go ahad and explore our list of funsites."
    Scraper.new.scrape_page
    menu
  end 
  
  def menu
    SiteList.all.each_with_index(1) do |site_name, index|
      puts "#{index}. #{site_name}"
    end 
  end 
end 