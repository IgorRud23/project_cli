class CLI 
  
  def start 
    puts "======================================================", "",
    "                      hi.",
    "you bored at the office and you have plenty of time?!", 
    "           then you in the right place.",
    "     here we have for you 22 interesting websites.", 
    "welcome, we hope you'll find something useful for you.",
    "         go down below to check the list.","",
    "======================================================", ""
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
    puts "Select topic by number:"
    # validation of select
    inputString = ""
    while inputString != "exit"
      
      input = gets.chomp 
      inputString = input.downcase 
      inputNumber = input.to_i 
      
      if inputString == "list"
        show_list
        
      elsif (inputNumber > 0 && inputNumber <= @length_of_titles)
      
        puts "", @array_of_articles[inputNumber-1][:title], "", @array_of_articles[inputNumber-1][:article].strip,
        "", @array_of_articles[inputNumber-1][:link], ""
        puts "To go back to list type list", "",
        "To exit from program type exit"
       
      elsif (inputString != "exit") 
        puts "Wrong input. Select number from the list" 
        puts "or type exit to close program."
        puts "Type list to go back to the list."
    else
      puts "Don't forget to smile =). And have a good day!"
    
      end 
    end 
  end
  
end 