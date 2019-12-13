# assessment
This application was build for Advanced Web Application Development course at University of Aberdeen for Individual Assignment part of the course. A live version of the application is available at  .NOTE: accessing the app via https:// breaks the maps -  http:// instead)
Student: Ilina Georgieva (https://github.com/I-Georg) - StudentID: 51881868

# Purpose
Purpose of the application is to create an application taht enables users to buy something - in this case - chocolate bars using open data.

# Issues
Devise and Active Admin
I wanted to add admin dashboard using Active Admin. However Active Admin and devise have difficulties getting configured properly and untangling them is very difficult and time consuming. That's why no gem is used for Admin dashboard.
Action Mailer - I have added an email sending option - when users order something and checkout, they receive an email that their order is received by the shop. It works in the terminal but I have received no email in my inbox. After research I discovered that Gmail blocks such mails for security issues.
Enabling purchase from the map - <br /> <%=escape_javascript link_to 'Add to cart', controller: 'carts', action: 'create', method: 'post', id: bar.id%>'); the code takes you to the cart but cart id is null. I believe this is a database issue but due to time constraint I have done little research.
# Running the application
Running application locally

    Run bundle install
    Create the database: 
	Migrate the database schema - rails db:migrate
	 Run  rake tasks for seeding the database  -  rake chocolate_bar:seed_bars  (At the begginning - there were two tables counties and chocolate_bars but due to database error, country_names and coordinates were moved to chocolate_bars.The new table read from csv file and use Faker for generating unique names . Additonlaly there are some places where year and cocoa_percent have switched positions from csv file)
	 rake countrycode:seed_countries  (Added additonly for purposes of live data)
	 
    Access the application using http://localhost:3000
#Viewing it elsewhere :
Application can be accessed at: https://quiet-forest-15652.herokuapp.com/ 
Login details: for admin: email: admin@example.com,Password: 123456 
For user ordinary email: user@example.com,Password: 1234567


Ruby version

    2.6.4

Rails version

    6.0.0

#Packages used

    ChartKick
    jQuery
    Leaflet
    Bootstrap
    Webpacker
    Unirest
    Will_paginate
	Devise
	Rspec
	Brakeman
	Acton Maibox/Active storage
	

    
    

Parts that are not working correctly

   
    Search in Heroku needed Postgresql syntax, if the app is run locally methods should be uncommented. In Heroku you can search the word with Upercase letter only. In local it worked with lowercase too
    References 

Agile Web Development with Rails 5.1
by Sam Ruby, David Copeland, et al
   
