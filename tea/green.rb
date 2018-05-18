class Green
  attr_reader :name
  attr_accessor :country, :province, :info, :steep_temp

@@all = []
  
  def initialize(name, steep_temp)
    @name = name 
    if steep_temp != nil
      @steep_temp = steep_temp 
    else 
      @steep_temp = 170
    end
    @@all << self
  end
  
  def self.all 
    @@all
  end 
end