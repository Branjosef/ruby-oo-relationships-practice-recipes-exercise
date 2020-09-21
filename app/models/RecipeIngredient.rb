class RecipeIngredient #done

attr_accessor :recipe, :ingredient  

@@all = []

def initialize (recipe, ingredient)
  @recipe = recipe
  @ingredient = ingredient
  @@all << self
end


def self.all #works
@@all
end



end