class User 

attr_accessor :name

@@all = []

def initialize (name)
@name = name
@@all << self
end


def self.all #work
  @@all
end

def recipes #work
  #binding.pry
  RecipeCard.all.select {|card| card.user == self}
end

def add_recipe_card(recipe, date, rating) #work
  RecipeCard.new(recipe, self, date, rating)
end

def declare_allergy(ingredient) #work
  Allergy.new(self, ingredient)
end

def allergens
  Allergy.all.select {|allergy| allergy.user == self}
end


end