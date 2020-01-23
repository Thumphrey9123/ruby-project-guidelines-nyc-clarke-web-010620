def location_info(location)
    system("clear")
    puts "#{location.summary}"
    puts "#{location.url}"
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
