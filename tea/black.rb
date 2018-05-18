class Black
  attr_reader :name
  attr_accessor :country, :province, :info, :steep_temp

@@all = []
  
  def initialize(name, steep_temp)
    @name = name 
    if steep_temp != nil
      @steep_temp = steep_temp 
    else 
      @steep_temp = 210
    end
    @@all << self
  end
  
  def self.all 
    @@all
  end 
end
  
  def default_temp
    a = self
    answer = case a
    when BlackTea
      205
    when GreenTea
      170
    when YellowTea
      185
    when WhiteTea
      185
    when OolongTea 
      195
    when PuerhTea 
      212
    end 
  end 
end 

ruby_black = BlackTea.new("Ruby Black")