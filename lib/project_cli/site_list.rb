class SiteList 
  attr_accessor :headingArray
  
  @@all = []
  
def initialize(headingArray)
  @headingArray = headingArray
  @@all << self 
end 

def self.all
  @@all
end
  
end 