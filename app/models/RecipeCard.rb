class RecipeCard  #done

  attr_accessor :recipe, :user, :date, :rating

  @@all = []

  def initialize (recipe, user, date, rating = 0 )
    @recipe = recipe
    @user = user
    @date = date
    @rating = rating.to_i
    @@all << self
  end

  def self.all #works
    @@all
  end


end