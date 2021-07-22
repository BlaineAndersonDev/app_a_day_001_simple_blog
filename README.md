# App A Day
### 001 - Simple Blog

## [App creation & Route Generation](#app-creation-route-generation)
* `rails new simple_blog -t -d postgresql -b`
    * `-t` disallows test autogeneration.
    * `-d` requires a different database than the default MySQL (I specified postgresql).
    * `-b` disallows the automatic bundle
      * A complete list of options can be seen by using `rails new --help`.
* Commit "boilerplate"
* Make Github Repo & connect it: `git remote add origin <URL>` and push it up regularly.
* Gemfile should look like the following with possible different version numbers:
```
source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.0.4'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 4.1'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
```
* Install those gems: `bundle install`
* Create the PG databases for test and dev: `rails db:create`
* Run the server and make sure it boots up and loads the default view at [http://localhost:3000/](http://localhost:3000/)
* Open `config/routes.rb` and add `resources :articles`
```
Rails.application.routes.draw do
  resources :articles
end
```
* The available routes can be checked in terminal (command line) with the command `rake routes`.
* **Commit and Push**

## [MVC Generation](#mvc-generation)
* `rails generate controller Articles`
  * *Note: The controllers class is **Capitilized** and **Plurel**.*
  * Open the newly created controller at `app/controllers/articles_controller.rb`.
    * Create a method named `new` and paste in the following:
    ```
    ...

    def new
      @article = Article.new
    end

    ...
    ```
    * `@article` is an instance variable which can be pased to the view.
  * Now open our view
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 