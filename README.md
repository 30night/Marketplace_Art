# README

<h1>R7</h1>
<h2>Identification of the problem you are trying to solve by building this particular marketplace app.</h2>
 Starshopping is an marketplace that is intended to be a medium for new people that want to start showing off their work to a community that is understanding much like the freelance programming industry artists are somtimes manipulated by customer and underpaid for their work and even if you keep the art and not getting paid you have spent time and recorces on somthing that now might not sell having a legitmate market place where customers pay upfront and get what they paid for would be benifical as the transaction would be quick and simple as the customer views the artists work and then can purchase without the two ever needing to contact each other.

<h1>R8</h1>
<h2>Why is it a problem that needs solving?</h2>
It is a problem that need solving as free lance artists are always on the bad sides of deals gone sour and there not meny dedicated marketplaces for artist with and not just for paint are but any art that individuals want to express themselves in. this isn't for crazy expensive are jsut for peole that enjoy creating or people that have a hobby that they want to sustain by crating and selling there are sites like gumtree and facebook marketplace but i find that those are so saturated with other items that it is sometimes hard to advertise your art also it doesn't hurt to advertise yourself on as many platforms as possible 
  
<h1>R9</h1>
https://starshopping.herokuapp.com/

<h1>R10</h1>
https://github.com/30night/Marketplace_Art

<h1>R11</h1>
<h2>Description of your marketplace app (website), including:</h2>

- Purpose
  the purpose of this app is to give people another free way to advertise their art in order to increase their following as well as to make some pocket money my intention was not to make a market place for espemsive pieces but for people who enjoy doing it as a hobby and being able to sell it without the approval from anyone as some sites may require you to be a cirtain standard but this platforom is for anyone.

- Functionality / features
  features of this app include full crud functionality a homepage to view all the listings, authentication so only the use that has created the listing can edit and delete.

- Sitemap

- Screenshots
(see file attached in zip)

- Target audience
  the main target audience with this app is people that make things as a hobby and just want to be able to make some money to continue to do their hobby.

- Tech stack 
 i've used scss, heroku, html and ruby. 

 <h1>R12</h1>
 <h2>User stories for your app</h2>



 Pablo Picasso- 
 I just do art as a hobby but most sites that i can sell my artwork on are not dedicated to just art creations like ebay, gumtree, facebook marketplace, craigslist although all i can sell my art on these sites there is so many items on these sites that it is hard for my work to be seen by people who appreciate my work its also hard to sell on these sites as people try to bargain for my hard work which is really demoralizing as i set the price i do because i believe that it is worth that much. using starshopping gives me an easier way to deal with selling my work as i can jsut put up the work and forget about it without having to worry about customers trying to bargain with me.

Leonardo da vinci-
Id like to think of myself as somewhat of an inventor but all my creations come at a cost for materals and such so in order to keep on makinh things i somtimes sell my creations to make a little bit of side cash to keep on inventing starshopping is a phenominal website i can use to list my items in order to sell and keep on making things



<h1>R15</h1>
<h2>Explain the different high-level components (abstractions) in your app </h2>
 Active Record 
 Within my app contains the name, description, price and image and allows me to assign it a particular data value like string or interger and allows the controller to manipulate it in the way that is intended. it connects all objects to the tables within the relational database. active record is represented as "M" as it is the model of your rails application and contains the bulit in actions for the developer to handle the data. 
 without active record it would be difficout to use the data in the SQL database as potsgreSQL can only store and manipulate scalar values that are converted into simpler values but with active storage it is able to do the steps without you worrying about it.

Action Controller

The action controller is the "c: in MVC and is what connects the model and the view together it contains the classes and methods that are interpeted by the model and are redered into the view which is usually a HTML document that the person viwing the website can see. in order for pages to be loaded the users need to give requests which are defined in the controller which are usually crud functionallity. Most of the code is already written in rails the developer just needs to give what will be requested and what will be sent out by that request.

Action View 

As the action controller interacts with the database the action view is what is recieving the requests that are in the view pages as HTML document. these requests are made by the customer that are on the website, as well as requests the views can also contain the functionality in order for users to delete, update and create withe the use of embedded ruby and forms.


<h1>R16</h1>
<h2>Detail any third party services that your app will use</h2>


- Devise
In order to authenticat users i have implemented the devise gem that allows me to give authentication to my app so that users have an id. wihtout this users would be able to edit and delete other users posts.

- AWS S3 Service 
Stoage of users images in a cloud service allows my app to be scalable another perk of using a cloud service is that if the site fails all the data stored in the cloud will still be there and remove the hassle of hosting your own servers and maintanance costs

<h1>R17</h1>
<h2>Describe your projects models in terms of the relationships (active record associations) they have with each other</h2>

Models 

- user

- listing

The user has an active record association to Listing model due to the association as a user has many listings and listings belong to a user. This association is seen in my app by the users id as all listings have an id that is related to the user that created it.

although i do not have these models in my market place i do have them in my erb so i will still explain the associations to show that i do understand my ERD

- cart 

- cart listings

user and cart 

The user model also has a relationship with the cart model as a 'User has_many carts' and a 'Cart belongs_to a user'. The user_id (primary key) is referenced in the cart so that every cart will contain a user_id. This is a one-to-many relationship.






 dont include master.key and credentials.yml