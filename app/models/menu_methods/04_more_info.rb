def location_info(location)
    system("clear")
    puts LINE_SQUIGGLES_MEDIUM.magenta
    puts "#{location.summary}"
    puts ""
    puts EQUALS_MEDIUM.white
    puts ""
    puts "Click here to see the Wiki Page! #{location.url}"
    return_to_menu
end

def more_info
    $prompt.select("Choose a location:") do |menu|  
        Location.all.each do |location|
            if location.journal_entries.length > 0
                menu.choice "#{location.name}", -> {location_info(location)}
            end
        end
        menu.choice "return to main menu", -> {start_menu}
        menu.choice "exit"
    end
end
