<h1>Best Mixes</h1>

[Front End Repo](https://github.com/ebrault/project-4-client/)

[Front End Deployment](https://ebrault.github.io/project-4-client)

[Back End Deployment](https://safe-inlet-43498.herokuapp.com)

<h1>Description</h1>
This is a simple front-end client for Best Mixes, an app used to track and vote on the best mixes by DJs, allowing for a user to sign up, sign in, change password, sign out, and perform simple CRUD actions (Create, Read, Update, Destroy) by sending AJAX requests to a Ruby On Rails based API using RESTful routes as well as displaying the responses

<h1>Technologies Used</h1>

* JavaScript

* jQuery

* AJAX

* HTML5

* CSS3

<h1>Development History</h1>

<h4>The development period lasted from 2018-11-29 until 2018-12-07</h4>

* Preliminary Work: During class time on 2018-11-29 and 2018-11-30 we were given the option to continue learnng ReactJS or begin working on our capstone projects. I decided in advance that I would not use ReactJS as the front end for my project, so I opted out of the remaining class to begin working on the project. I spent 2018-11-29 developing my project idea, deciding on tools to be used, and developing ERDs, Wireframes and User Stories for the project. On 2018-11-30 I had a one-on-one meeting with the instructors to go over the project idea and I began working on the project.

* Day 1 (2018-11-30): Having decided on using Ruby On Rails for the API and the Browser Template provided by General Assembly for the client, I began working on my capstone project. I set up GitHub repositories for the API and the client, the Heroku app for the API, and the GitHub pages deployment for the client. Following this, I began building out the API with RESTful routes for a single resource. Once I was successfully able to perform all auth actions to the API from the command line with CURL scripts, and I was successfully able to perform all CRUD actions to the API from the command line with CURL scripts, I refactored the resource to be private, tested all CRUD actions from the command line with authentication to ensure that CRUD would work with authentication. Knowing that all CRUD actions worked with authentication, I began building out the client starting with user authentication. Constrained by time, I was able to perform all auth actions from the client to the API.

* Days 2 & 3 (2018-12-01 & 2018-12-02): No work was done on the project over the weekend.

* Day 4 (2018-12-03): Having a simple working API with RESTful routes handling CRUD requests for a single resource and authentication, I began building out the client side for these authenticated CRUD actions, ensuring that all forms cleared and all CRUD actions had visual feedback for the user. At this point I had a working full stack application and was ready to start on version 2. The afternoon was spent to developing an ERD for version 2, planning version 2, and the handling of multiple resources.

* Day 5 (2018-12-04): With the ERD and version 2 planning in hand, I began coding version 2. I ran into a setback when I attempted to develop a one-to-one relationship between a user and a "collection", to which a user would be able to add mixes. I struggled with how to implement the one-to-one relationship from user to collection, finally got it working, and discovered it was superfluous. Despite this setback, I continued on developing the API based on the ERD. The primary resource (mixes) would have secondary resources votes and comments. Users would have many mixes, mixes would belong to users. User would have many votes, votes would belong to users, mixes would have many votes, votes would belong to mixes. User would have many comments, comments would belong to users, mixes would have many comments, comments would belong to mixes. The resources were scaffoldeded out and CURL scripts were written to test CRUD actions for these resources. The relations between the resources were not yet added. Constrained by time, work would have to continue on the next day.

* Day 6 (2018-12-05): With a working full stack application in hand allowing for CRUD actions on three resources, I began to privatize the secondary resources and relations to them. Once CRUD actions on all resources with authentication was possible, I began to build out the client again to ensure authenticated CRUD actions on the secondary resource from the client worked. Once these were all successful, I ended work for the day.

* Day 7 (2018-12-06): With a working full stack application in hand allowing for authenticated CRUD actions on all three resources, I began to clean up the project. Since users are only going to be able to make comments and make votes, unnecessary CRUD actions for votes and comments were removed. Additionally, votes and comments were added to the rendered mix HTML on get requests. Slight styling was added. At this point, I realized that I did not have enough time to build out the client the way I wanted. I did not feel comfortable enough with ReactJS to implement it in this project, but for the app that I built, I realized that it likely would have been helpful. I decided to call it a day and put the finishing touches on the project

<h1>Changes To Be Made In Future Iterations</h1>

* Rebuild front end to use ReactJS rather than browser template in order to allow resources to be dynamically updated on secondary resource actions

* Descope CRUD actions for primary resource: have a pre-seeded database with objects rendered that allow for secondary resource actions, allow users to make submissions to the database that inherit these secondary resource actions

* Add tracklists to mixes, allow users to modify tracklists

* Allow for user profiles

<h1>ERDs</h1>

![V1](https://i.imgur.com/mIhKkpa.jpg)

![V2](https://i.imgur.com/sfKn0jf.jpg)

<h1>Wireframes</h1>

![Signed Out](https://i.imgur.com/G69NoQa.jpg)

![Signed In](https://i.imgur.com/S74jiYe.jpg)

![My Mixes](https://i.imgur.com/GaRRnRA.jpg)

![Add A Mix](https://i.imgur.com/tQsBxLv.jpg)

<h1>User Stories</h1>
User Stories:

As a user I want to be able to:

Version 1
* Sign Up
* Sign In
* Change PW
* Sign Out
* CRUD a DJ mix to my collection
    * DJ
    * Event
    * Date
    * Tracklist

Version 2
* CR a DJ in the database
* CR mixes to the database
* Search through DB
* Vote on the best mixes by DJ / Show Top Mixes by DJ
* View comments
* Leave comments
* Listen to the mix on Soundcloud / Mixcloud

Version 3
* Search through my collection by:
    * DJ
    * Event
    * Date
    * Track
* View tracks on Discogs Marketplace

<h1>App Screenshot</h1>
![App](https://i.imgur.com/9YI1I8d.png)

<h1>API Routes</h1>

** Please Note, All Routes Require Authentication **

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signIn`    |
| DELETE | `/sign-out`            | `users#signout`   |
| PATCH  | `/change-password`     | `users#changepw`  |
| GET    | `/mixes`               | `mixes#index`     |
| POST   | `/mixes`               | `mix#create`      |
| GET    | `/mixes/:id`           | `mix#show`        |
| PATCH  | `/mixes/:id`           | `mix#update`      |
| DELETE | `/mixes/:id`           | `mix#destroy`     |
| GET    | `/votes`               | `votes#index`     |
| POST   | `/votes`               | `vote#create`     |
| GET    | `/votes/:id`           | `vote#show`       |
| PATCH  | `/votes/:id`           | `vote#update`     |
| DELETE | `/votes/:id`           | `vote#destroy`    |
| GET    | `/comments`            | `comments#index`  |
| POST   | `/comments`            | `comment#create`  |
| GET    | `/comments/:id`        | `comment#show`    |
| PATCH  | `/comments/:id`        | `comment#update`  |
| DELETE | `/comments/:id`        | `comment#destroy` |


<h1>Installation</h1>

1. Download
2. Rename the directory to whatever you want
3. Move into the project directory and `git init`
4. Create a GitHub repository to push your code to
5. Rename your app module in `config/application.rb` (change `Project4Api`)
6. Rename your project database in `config/database.yml` (change `project-4-api`)
7. Install dependencies with `bundle install`
8. Create an `.env` file (with `touch .env`)
9. Generate TWO Rails secrets (using `bundle exec rails secret`)
10. Store these secret keys in the previously created `.env` file using `SECRET_KEY_BASE_<TEST|DEVELOPMENT>`
11. In order to make requests to your deployed API you will need to set `SECRET_KEY_BASE` in the environment of the production API and `CLIENT_ORIGIN`
12. Set up your database:
  * `bin/rails db:drop`
  * `bin/rails db:create`
  * `bin/rails db:migrate`
  * `bin/rails db:seed`
  * `bin/rails db:examples`
13. Run your server with `bin/rails server`
