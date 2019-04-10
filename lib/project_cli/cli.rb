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
    
      puts "Select topic by number"
      # vaidation of select
      
      selected = gets.chomp.to_i 
      if (selected > 0 )
        puts "is number"
      else 
        puts "not a number"
      
       
      puts selected 
    end 
    end 
    
end 