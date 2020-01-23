URL = "https://wft-geo-db.p.rapidapi.com/v1/locale/locales"

response = RestClient.get(URL + "London")





### This was my work on trying to organize journals by rating ###

## This method determines the average of a certain location
    # def collect_ratings
    #     journal_entries.sum(:rating).to_f / journal_entries.where("rating <= 0").length
    # end


## This code was meant to update a location's column to display it's average rating    
    # def self.assign_average_rating
    #     self.all.each do |location|
    #         location.avg_rating = location.collect_ratings
    #     end
    # end

## This was another attempt to assign average rating. This would sort locations and ratings into an array.
## I couldn't figure out how to sort by the second element of an array.    
    # def self.assign_average_rating
    #     array = []
    #     self.all.each do |location|
    #         array << [location, location.avg_rating]
    #     end
    #     sorted_array = array.sort_by {|set| set[1]}
    #     sorted_array
    # end




###Came from browse by rating
# def browse_by_rating
#     # I want to display a list of locations with their average rating next to them.
#     $prompt.select('Choose a location') do |menu|
#         array = []
#         Location.all.each do |location|
#             array << [location, location.avg_rating]
#         end
#         ordered_array = array.map.sort_by(location.rating)
#         ordered_array.each do |location|
#             menu.choice "#{location.name} average rating: #{location.journal_entries.average(:rating)}", -> {location_journals(location)}
#         end
#     end 
# end

###from create account -- replaced by a single line method
# def find_or_create_by_name(user_location)
#     if Location.all.any?{|location| location.name == user_location}
#         return Location.all.find{|location| location.name == user_location}
#     else
#         return Location.create(name: user_location)
#     end
# end