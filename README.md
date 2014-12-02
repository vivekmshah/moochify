#README

###Authors
James Felz, Vivek Shah, Paul Garbett

The app that connects neighbors, allowing them to share tools & equipment with each other.

Moochify is the best way to use equipment when you need it. It’s an open and convenient approach to sharing. Owners earn money from their investment, and neighbors avoid buying unnecessary equipment. Unlike Craigslist, Moochify lets people share rather than sell.

####Ruby version
This application was built using Ruby 2.1.2

####Rails version
This application is built on Rails version 4.0.4

####System dependencies
This application requires Google Maps Developer API, Paperclip with ImageMagick, and Geocoder.

⋅⋅⋅ gem 'geocoder'

⋅⋅⋅ gem "paperclip", "~> 4.2"

####Configuration
Do a git clone and a bundle install.

####Database creation
Do a rake db:create.

####Database initialization
Do a rake db:migrate.  Optionally, if you want some sample data, use rake db:seed.

####How to run the test suite
Do a good old bundle exec rspec spec.

####Deployment instructions
heroku create, git push heroku master, heroku rake assets:precompile, RAILS_ENV=production bundle exec rake assets:precompile, git add -> commit -> push, heroku open, heroku run rake db:seed