##interactions with user
## contain all of our gets and puts
## control flow of program

class CLI
    
    def start
        puts ""
        puts "Welcome to Puppy Recipes!"
        puts ""
        puts "Search for a recipe by entering an ingredient."
        puts ""
        @ingredient = gets.chomp.downcase
        API.fetch_recipes(@ingredient)
        puts ""
        recipes = Dog_recipes.all
        print_recipes(recipes)
        puts ""
        puts "Type a number to see more detail or type 'exit' to exit."

    end

    def print_recipes(re)
        puts ""
        puts "These are the recipes with #{@ingredient}"
        puts ""
        re.each.with_index(1) do | r, i |
            puts "#{i}. #{r.name}"
       
    end
end    
    
end