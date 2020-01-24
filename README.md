# Module One Final Project: Prestige Worldwide

This project is a simple travel journaling app that displays basic capabilities of databases to access many-to-many relationships. The app's title is _Prestige Worldwide_, inspired by the brilliant Will Ferrell, John C. Reilly film, _Step Brothers_.

## Features

* Allows users to create an account and log in to access certain permissions.
* These permissions include writing a travel journal entry and editing or deleting their own entries.
* Users can view any and all travel journal entries that have been submitted on our app.
* Journal entries can be sorted by location, user, or rating.

## Installation

This app uses the TTY::Prompt and Wikipedia-client gem. To install them, simply run the `bundle` prompt in your terminal.

If you prefer to install the gems manually, enter these commands:
`gem install tty-prompt`
`gem install wikipedia-client -v 1.5.0`

### How to run

1. enter 'bundle install' in terminal
2. enter 'rake db:migrate' in terminal
3. enter 'rake db:seed' in terminal
Now you're ready to go!
4. enter 'ruby ./bin/run.rb' in the terminal once you are at the top of the file.

Welcome to Prestige Worldwide! An educational travel blogging website.

## Contributors

* This app was conceived by Thomas Humphrey. The code was written by Thomas Humphrey and Michael Diaz.
* TTY::Prompt was created by Piotr Murach and full documentation can be found here: https://github.com/piotrmurach/tty-prompt/blob/master/README.md
* wikipedia-client was written by Cyril David, Ken Pratt, Mike Haugland, Aishwarya Subramanian, Pietro Menna, Sophie Rapoport and full documentation can be found here: https://rubygems.org/gems/wikipedia-client/versions/1.5.0
* Border design for the journal entries was found on https://www.asciiart.eu/art-and-design/dividers
* _Step Brothers_ was released in 2008 by Columbia Pictures.
