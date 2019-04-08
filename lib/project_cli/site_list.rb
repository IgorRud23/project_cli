class SiteList 
  attr_accessor :heading, :info_one, :info_two
  
  @@all = []
  
def initialize(heading)
  @heading = heading
  @info_one = info_one
  @info_two = info_two
  @@all << self 
end 

def self.all
  @@all
end
  
end 