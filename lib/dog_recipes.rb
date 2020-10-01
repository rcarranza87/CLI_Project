## keeps track of recipes
## tourn responses into objects
## save all recipes created

class Dog_recipes
    attr_accessor :name
    @@all =[]

    def initialize(name: )
        @name = name
        @@all << self
    
    end

    def self.all
        @@all
    end
end