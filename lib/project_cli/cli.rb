class CLI 
  
  def start 
  puts "Welcome"
  Scraper.new.scrape_page
  menu 
  end 
  
  def menu
   navigation = SiteList.all
   navigation.each do |site_name|
      site_name.headingList.each_with_index do |name, index|
        puts "#{index+1}. #{name}" 
      
      
  # list = Hash[(0...navigation.size).zip navigation]
  # puts list.inspect
  # puts list.to_yaml
end 
end 
  end 
    #binding.pry
end 