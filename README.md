# Rails Code Challenge - Hangry Games

For this assessment, you'll be working with a hunger games domain.

In this repo, there is a Rails application with some features built out. Your job is to extend this code to add the functionality described in the deliverables below.

## Topics

- MVC
- REST
- Request-Response Cycle
- Forms and Form Helpers
- ActiveRecord
- Validations

## Setup

Before you begin coding your solution, clone this repo and then `cd` into it. Then run `bundle install`, `rails db:migrate`, and `rails db:seed` to install dependencies and set up the database, and run `rails s` to start the server.

## The Domain

The application keeps track of the games that have taken place and the people that were a part of them

There are three models in the domain: Game, Person, and Role.

Games and People have a many to many relationship through Roles. A single Role belongs to one Game and one Person.

## What You Already Have

The starter code includes migrations, models, and seed data for Games and People. There are also routes, controller actions, and views to support listing the games and people.

After running the setup instructions above, visiting `'/games'` will display all of the games, and visiting `'/people'` will display all of the people.

***Schema***

People

| Column | Type |
| ------------- | ------------- |
| name  | String  |
| district  | Integer  |
| created_at  | DateTime  |
| updated_at  | DateTime  |

Games

| Column | Type |
| ------------- | ------------- |
| name  | String  |
| number  | Integer  |
| created_at  | DateTime  |
| updated_at  | DateTime  |

### Model Methods and Validations

- None

### Routes, Controllers and Views

- People index
- Games index

## Instructions

Update the code of the application to meet the following deliverables. Follow RESTful naming conventions and the MVC pattern to divide responsibility.

***Read through these deliverables carefully to understand the requirements for this code challenge. Tackle them one by one, as they build on each other sequentially.***



### 1. Role Model

To log that a specific Game appeared on a certain Person, we need to create the Role model. **Make the necessary updates to the schema and models** so that:

- Game can appear on many people
- Person can have multiple games
- Role stores the occupation as a string

### 2. New Role Form

A user can fill out a form to create a new Role. They can:

- Choose an existing game from a select dropdown
- Choose an existing person from a select dropdown
- Enter the role's occupation
- Submit the form

After submitting the form, the user should be redirected to the selected games's show page.

### 3. Game Show Page

On the game show page, a user should see:

- Game name
- A list of the people who took part in that game
- Each person's name should link to the Person Show page

### 4. Person Show Page Person links

On the Person show page, add a list of the Games the person took part in.

For each Game, show the:

- name of the game
- the occupation of the role the person played in that game

Each Game name should link to the show page for that Game.

### 5. Role Occupation Validation

The occupation on an Role should be one of the following: `Tribute`, `MC`, `Game Master`, `Coach`, and `Designer`.

- Add a validation to ensure that the Role's occupation is one of the five occupations above.
- Add handling for this error to the Role create action.
- The validation error should be shown on the Role creation form when a user attempts to save an role with an invalid occupation.