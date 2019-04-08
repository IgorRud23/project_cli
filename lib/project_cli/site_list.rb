class SiteList 
  attr_accessor :heading
  
  @@all = []
  
def initialize(heading)
  @heading = heading
  
  @@all << self 
end 

def self.all
  @@all
end
  
end 