class CLI 
  
  def start 
  puts "Welcome"
  Scraper.new.scrape_page
  menu 
  prompt
  end 
  
  def menu
  @array_of_articles 
  @length_of_titles
  
   class_address = SiteList.all
   
  class_address.each do |element|
     
    @array_of_articles = element.headingList
    @length_of_titles = element.headingList.length 
    
    
      element.headingList.each_with_index do |block, index|
  
        puts "#{index+1}. #{block[:title]}" 
        
end 
end 
  end 
    
    def prompt
      puts "Select topic by number"
      # vaidation of select
      
      selected = gets.chomp.to_i
      if (selected > 0 && selected <= @length_of_titles)
      
        puts "", @array_of_articles[selected-1][:title], "", @array_of_articles[selected-1][:article].strip, "", @array_of_articles[selected-1][:links], ""
       
      else 
        puts "select different number"
    
    end 
    end 
    
end 