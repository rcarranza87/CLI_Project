## handle all of our API requests

class API

    def self.fetch_recipes(ingredient)
        url = "http://www.recipepuppy.com/api/?i=#{ingredient}"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        
        recipes = JSON.parse(response)["results"]
        
        recipes.each do |r|
            Dog_recipes.new(name: r["title"])
            
            
        end 
    end
end
