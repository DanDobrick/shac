#Shac
A web-app to help students connect and sleep closer to campus; built in one day for a hackathon.

##An app by:
- [Dan Dobrick](https://github.com/DanDobrick)
- [Dave Nestoff](https://github.com/dnestoff)
- [Benedict Schurwanz](https://github.com/benedictify)
- [Jeff Fichtner](https://github.com/jeff-fichtner)

##How to install
1. Ensure you have [Ruby](https://github.com/ruby/ruby#how-to-get-ruby) installed.
2. Install rails ( `gem install rails` ) and bundler ( `gem install bundler` ).
3. Clone the repository using `git clone https://github.com/DanDobrick/shac.git`.
4. Install Dependencies: `bundle install`.
5. Setup Database: first run `bundle exec rake db:create` next run `bundle exec rake db:migrate`, and optionally seed using `bundle exec rake db:seed`.
6. Run the server with `bundle exec rails s` then navigate to [http://localhost:3000/](http://localhost:3000/)

##Screenshots
###Home Page
![Home Page](/screenshots/home.png?raw=true "Home Page")
###User Page
![User Page](/screenshots/user.png?raw=true "User Page")
###How it works
![How It Works](/screenshots/how.png?raw=true "How It Works")
###Choosing an Account
![Choose Your Bank](/screenshots/choose-bank.png?raw=true "Choose Your Bank")
###Connected Account
![Connected Account](/screenshots/chase-connected.png?raw=true "Connected Account")

##Code Status
[![Build Status](https://travis-ci.org/DanDobrick/spare-change.svg?branch=master)](https://travis-ci.org/DanDobrick/spare-change)

##Technologies used
- [Ruby on Rails](https://github.com/rails/rails)
- [JavaScript](https://www.javascript.com/)
- [Typeahead.js](https://twitter.github.io/typeahead.js/)
- [Plaid](https://plaid.com/)
- [Stripe](https://stripe.com/)
- [Make My Donation](http://makemydonation.org/)
- [Org Hunter](http://orghunter.com/)
