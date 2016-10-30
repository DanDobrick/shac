#Shac
Entire site built in 24 hours for a contest put on by [Shac](http://www.shac.io); this entry won first place.

A web-app to help students connect and sleep closer to campus. Only those with a .edu email address can sign up, then students can choose to host other students or "crash" at a host's house/apartment/dorm. The "crasher" can offer to exchange things such as walking the host's dog or buying the host coffee as a thank-you for allowing them to stay.

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
###Mobile View
![Mobile View](/screenshots/mobile-home.png?raw=true "Mobile View")
###Menu
![Menu Bar](/screenshots/menu.png?raw=true "Menu")
