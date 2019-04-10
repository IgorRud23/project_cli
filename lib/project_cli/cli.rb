class CLI 
  
  def start 
  puts "Welcome"
  Scraper.new.scrape_page
  menu 
  prompt
  end 
  
  def menu
   navigation = SiteList.all
   navigation.each do |site_name|
      site_name.headingList.each_with_index do |name, index|
        puts "#{index+1}. #{name}" 
      
end 
end 
  end 
    
    def prompt
      selected = gets.chomp
      puts selected 
    end 
    
end 