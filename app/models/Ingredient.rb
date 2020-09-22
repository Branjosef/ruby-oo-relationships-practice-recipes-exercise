class Ingredient

attr_accessor :name 

@@all = []    #all ingredients that exist

def initialize(name)
  @name = name
  @@all << self
end

def name #works
  @name
 end

 def self.all #works
  @@all
 end

def self.most_common_allergen
  #binding.pry
  allergies = Allergy.all.map {|a| a.ingredient}
  frequency = allergies.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
  allergies.max_by { |v| frequency[v] }
end

end


