class CLI 
  
  def start 
  puts "Welcome"
  Scraper.new.scrape_page
  menu 
  prompt
  end 
  
  def menu
  @array_of_titles 
  @length_of_titles
  
   class_address = SiteList.all
   
  class_address.each do |element|
     
    @array_of_titles = element.headingList
    @length_of_titles = element.headingList.length 
    
    
      element.headingList.each_with_index do |name, index|
        puts "#{index+1}. #{name}" 
end 
end 
  end 
    
    def prompt
      puts "Select topic by number"
      # vaidation of select
      
      selected = gets.chomp.to_i
      if (selected > 0 && selected <= @length_of_titles)
        puts @array_of_titles[selected-1]
        puts "is number"
      else 
        puts "select different number"
    
    end 
    end 
    
end 