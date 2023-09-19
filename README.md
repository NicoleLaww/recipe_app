# README

# Tasteful Traditions 

A recipe sharing app, built using Ruby version 3.1.1p18, on Rails version 6.1.7.4, powered by ActiveRecord, designed to help users discover, share, and organize their favourite recipes. Whether you're a seasoned chef or just getting started in the kitchen, this app provides an easy-to-use platform for creating, searching, and sharing delicious recipes with a vibrant community of food enthusiasts.

## Run the project

* Clone this repo to your local machine
* From your terminal, within the project root, run bundle install
* To set up the database, run rails db:create
* Run rails db:migrate
* From your terminal, run rails server -b 0.0.0.0
* On your browser, go to http://localhost:3000/ to access the app


As a non-registered user, I can see...
* Recipe Page
![Recipes](images/recipes.png)

* Register Page
![Register](images/register.png)

* Login Page 
![Login](images/login.png)

As a registered user, I can see...
* User Page
![User Page](images/userProfile.png)

* Create Recipe Page 
![Create Recipe](images/createRecipe.png)

* My Recipes Page 
![My Recipes](images/myRecipe.png)

* Individual Recipe Page, where a filled in heart means favourited
![Recipe Page](images/recipePage.png)

* If you unclick the heart, it removes it from favourited 
![Removed Favourites](images/removed.png)

* Can post and read reviews
![Reviews](images/reviews.png)

## Dependencies

### Main Dependencies
- @babel/preset-react 7.22.5
- @rails/actioncable 6.0.0
- @rails/activestorage 6.0.0
- @rails/ujs 6.0.0
- @rails/webpacker 5.4.4
- prop-types 15.8.1
- react 18.2.0
- react-dom 18.2.0
- turbolinks 5.2.0

### Development Dependencies
- @babel/core 7.22.11
- @babel/plugin-proposal-private-methods 7.18.6
- @babel/plugin-proposal-private-property-in-object 7.21.11
- @babel/preset-env 7.22.10
- webpack-dev-server 3



<!-- This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->
