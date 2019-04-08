class CLI 
  
  def start 
    puts "Welcome"
    Scraper.new.scrape_page
    menu
  end 
  
  def menu
    SiteList.all.each.with_index(1) do |site_name, index|
      puts "#{index}. #{site_name.heading}"
    end 
  end 
end 