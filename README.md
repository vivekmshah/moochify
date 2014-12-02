#Moochify

####Authors
James Felz, Vivek Shah, Paul Garbett

The app that connects neighbors, allowing them to share tools & equipment with each other.

Moochify is the best way to use equipment when you need it. It’s an open and convenient approach to sharing. Owners earn money from their investment, and neighbors avoid buying unnecessary equipment. Unlike Craigslist, Moochify lets people share rather than sell.

####Ruby version
This application was built using Ruby 2.1.2.

####Rails version
This application is built on Rails version 4.0.4.

####System dependencies
This application relies on Google Maps Developer API, Paperclip with ImageMagick, and Geocoder.

<pre>gem 'geocoder'

gem "paperclip", "~> 4.2"</pre>

####Configuration
<pre>git clone
bundle install</pre>

####Database creation
<pre>bundle exec rake db:create</pre>

####Database initialization
<pre>bundle exec rake db:migrate</pre>
* Optionally, if you want some sample data, do a
<pre>bundle exec rake db:seed</pre>

####How to run the test suite
<pre>bundle exec rspec spec</pre>

####Deployment instructions
* After installing the Heroku CLI and initializing Git,
<pre>heroku create
git push heroku master
heroku run rake db:seed</pre>
* Precompile image assets in the rails asset pipeline either on the heroku remote:
<pre>heroku rake assets:precompile</pre>
* OR, precompile locally and push the commit to the heroku remote:
<pre>RAILS_ENV=production bundle exec rake assets:precompile
git add
git commit
git push heroku master</pre>
