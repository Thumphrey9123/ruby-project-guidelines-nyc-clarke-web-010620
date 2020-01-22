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

## This was a duplicate method. Saving it just in case it's unique.
# def location_journals(location)
#     # I want the user to be able to choose a location and then see a list of journal entries
#     # associated with that location.
#     $prompt.select ("#{location}'s Journal Entries'") do |menu|
#         journal_entry_menu(location, menu)     
#     end
#     return_to_menu
# end