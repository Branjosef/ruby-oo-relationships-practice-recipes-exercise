class Allergy  #done

attr_accessor :user, :ingredient

@@all = []

def initialize (user, ingredient) #works
  @user = user
  @ingredient = ingredient
  @@all << self
end


def self.all #works
@@all
end


end