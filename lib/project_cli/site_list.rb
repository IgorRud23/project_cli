class SiteList 
  attr_accessor :headingList
  
  @@all = []
  
def initialize(headingList)
  @headingList = headingList
  @@all << self 
end 

def self.all
  @@all
end


end 