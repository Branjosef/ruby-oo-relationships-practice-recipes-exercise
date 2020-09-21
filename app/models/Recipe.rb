class Recipe

attr_accessor = :name

 @@all = []  

 def initialize (name) #works
 @name = name
 @@all << self
 end

 def name #works
  @name
 end

 def users #works
  users = []
  RecipeCard.all.select do |card| 
    users << card.user if card.recipe == self.name
    end
    users
 end


def  self.all  #works
   @@all
 end

 def ingredients
  ingred = []
  RecipeIngredient.all.select do |ri|
    ingred << ri.ingredient if ri.recipe == self.name
  end
  ingred
 end

 def allergens
  ingred = self.ingredients 
  allergens = []
  ingred.each do |e|
      Allergy.all.select do |allergy| 
        allergens << allergy.ingredient if allergy.ingredient == e 
      end
    end
    allergens.uniq
end


  #   ingred.each do |ingred|
  #     Allergy.all
  # Allergy.all.select do |allergy|
  #   aller





end