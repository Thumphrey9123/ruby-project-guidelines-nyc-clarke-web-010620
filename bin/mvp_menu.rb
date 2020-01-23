# require_relative '../config/environment'
# prompt = TTY::Prompt.new

# ##Need to add logic for entering duplicate users or locations!!
# def create_entry
#     puts "Input Name:"
#     user_name = gets.chomp
#     u1 = User.create(name: user_name)

#     puts"Where have you been?"
#     user_location = gets.chomp
#     l1 = Location.create(name: user_location)
#     JournalEntry.create(user: u1, location: l1)
# end

# def help
#     puts "create_entry"
#     puts "other_journals"
#     puts "browse_by_location"
#     puts "browse_by_rating"
#     puts "delete_journal"
# end

# def run
#     i=0
#     while i<1
#         puts "What would you like to do?"
#         user_input = gets.chomp
#         case user_input
#             when "create_entry"
#                 create_entry
#                 run
#             when "help"
#                 help
#                 run
#             when "browse_by_location"
#                 puts "browsing"
#                 run
#         end
#         i+=1
#     end
# end

# run
# puts "el fin"