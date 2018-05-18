class Person
  
  attr_accessor :teas
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @cupboard = {:black => [], :green => [], :oolong => [], :puerh => [] :white => [], :yellow => []}
  end 
  
  def all 
    @@all
  end 
  
  def add_black_tea(name, steep_temp = nil)
    tea = Black.new(name, steep_temp)
    cupboard[:black] << tea
  end
  
  def cupboard
    @cupboard
  end 
  
  def find_tea_by_name(name)
    @cupboard.detect{|key, value| 
      value.detect{|obj| obj.name == name}}
  end 
  
  def steep_tea(name)
    #subtracts grams from total weight
    #puts on the kettle 
    #starts tea timer
  end 
  
  def put_on_the_kettle 
    #heats water in increments until temp is reached
  end 
  
  def tea_timer
    
  end
  
end 
