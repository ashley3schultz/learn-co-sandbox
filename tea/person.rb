class Person
  
  attr_accessor :teas
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @cupboard = {
      :black => [],
      :green => [],
      :oolong => [],
      :puerh => [],
      :white => [],
      :yellow => []}
      @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def add_black_tea(name, steep_temp = nil)
    tea = Black.new(name, steep_temp)
    cupboard[:black] << tea
  end
  
  def add_green_tea(name, steep_temp = nil)
    tea = Green.new(name, steep_temp)
    cupboard[:green] << tea
  end
  
  def cupboard
    @cupboard
  end 
  
  def find_tea_by_name(name)
    name = []
    self.cupboard.each{|key, array| 
      array.each{|o| name << o if o.name == name}}
      name
  end
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


a = Person.new("Ashley")
 => #<Person:0x0000000279f7f0 @name="Ashley", @cupboard={:black=>[], :green=>[], :oolong=>[], :puerh=>[], :white=>[], :yellow=>[]}>
 
 
a.add_black_tea("Buland Black", 195)
 => [#<Black:0x0000000263a108 @name="Buland Black", @steep_temp=195>]
 
 
a.add_black_tea("Ruby Black")
 => [#<Black:0x00000002181620 @name="Buland Black", @steep_temp=195>, #<Black:0x000000020293b8 @name="Ruby Black", @steep_temp=210>]
 
Black.all 
  => [#<Black:0x00000002181620 @name="Buland Black", @steep_temp=195>, #<Black:0x000000020293b8 @name="Ruby Black", @steep_temp=210>]
  
a.add_green_tea("Gunpowder")
  => [#<Green:0x00000001b820a8 @name="Gunpowder", @steep_temp=170>]
  
Green.all
  => [#<Green:0x00000001b820a8 @name="Gunpowder", @steep_temp=170>]
  
a.cupboard
  => {:black=>[#<Black:0x00000002181620 @name="Buland Black", @steep_temp=195>, #<Black:0x000000020293b8 @name="Ruby Black", @steep_temp=210>], :green=>[#<Green:0x00000001b820a8 @name="Gunpowder", @steep_temp=170>], :oolong=>[],:puerh=>[], :white=>[], :yellow=>[]}
   
Person.all 
 [=> #<Person:0x00000001c10380 @name="Ashley", @cupboard={:black=>[#<Black:0x00000001bf7e48 @name="Buland Black", @steep_temp=195>, #<Black:0x00000001be46b8 @name="RubyBlack", @steep_temp=210>], :green=>[#<Green:0x00000001b820a8 @name="Gunpowder", @steep_temp=170], :oolong=>[], :puerh=>[], :white=>[], :yellow=>[]}>]
  
  
