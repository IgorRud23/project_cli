class CLI 
  
  def start 
  puts "Welcome"
  Scraper.new.scrape_page
  menu 
  prompt
  end 
  
  def menu
    @list 
  @length_of_list
   navigation = SiteList.all
   navigation.each do |site_name|
    @length_of_list = site_name.headingList.length 
    @list = site_name.headingList
      site_name.headingList.each_with_index do |name, index|
        puts "#{index+1}. #{name}" 
end 
end 
  end 
    
    def prompt
      puts "Select topic by number"
      # vaidation of select
      
      selected = gets.chomp.to_i
      if (selected > 0 && selected <= @length_of_list)
        puts @list[selected-1]
        puts "is number"
      else 
        puts "select different number"
    
    end 
    end 
    
end 