class CLI 
  
  def start 
  puts "Welcome"
  Scraper.new.scrape_page
  show_list
  prompt
  end 
  
  def show_list
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
      inputString = ""
      while inputString != "exit"
      
      input = gets.chomp 
      inputString = input.downcase 
      inputNumber = input.to_i 
      
      if inputString == "list"
        show_list
        
        elsif (inputNumber > 0 && inputNumber <= @length_of_titles)
      
        puts "", @array_of_articles[inputNumber-1][:title], "", @array_of_articles[inputNumber-1][:article].strip, "", @array_of_articles[inputNumber-1][:links]
        puts "To go back to list type list", "",
        "To exit from program type exit"
       
      else 
        puts "select different number"
    
    end 
    end 
    
end 
end 