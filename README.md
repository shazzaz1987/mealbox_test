# MealBox
Heroku link: (https://mealbox.herokuapp.com/)

Link to code highlights: (https://github.com/kelvintyb/mealbox-app/blob/master/Code-Highlights.js)

E-commerce app for grocery packages tailored to recipes, catering to home cooks that just want to cook and have minimal clean up / food wastage.

Built while exploring Ruby on Rails and integration of external APIs into the frontend and database.

## Example Pitch

Welcome to MealBox. Do you have trust issues with restaurants? Do you want to have fresh, piping hot meals after a long day's work without the lengthy checkout lines?
Come on aboard and get amongst the new revolution in cooking. That's right. We are redefining both COOKING AND SHOPPING

We realise that both the man and the lady of the twenty first century is a busy bee, socially anxious, a budding chef and many more(you tell us, we are all ears).At the same time, take outs are getting so last tuesday and home cooking is getting back on board.

However,it's just such a drag to go to the supermarket these days, standing in those long checkout lines and lugging pounds of groceries home. Now with MealBox, people  can cook their own Gordon Ramsey style meals(well not quite Ramsey) with carefully planned recipies delivered straight to their front door. Moreover prices of ingredients match those available in major supermarkets.

##User Experience

The following are examples of users whom we assume will make up the bulk of our clientele.

User A is a busy 9-5 worker who is fed up with disgusting, unhealthy take outs yet lacks the time and energy to go to the grocery store and endure those annoying long lines. At the same time he/she wants to have a home cooked meal.With ingredients and recipies delivered straight to the door, whipping up a hot,fresh meal is as easy as pie.

User B is a person with social anxiety and finds it difficult to go to the supermarket. With MealBox, he/she can get recipies and ingredients delivered straight to his/her door.

User C is just starting out cooking and is unsure of the steps that are needed and ingredients he/she needs to whip up his/her favouriite dish. With MealBox, he/she is delivered the ingredients as well as step by step recipies delivered straight to his/her front door.

## Diagrams and Wireframes

Entity Relationship Diagram:

![ERD](https://github.com/kelvintyb/mealbox-app/blob/master/wdi6_presentation/ERD.jpg)

User Flow Diagram:

![User Flow Diagram](https://github.com/kelvintyb/mealbox-app/blob/master/wdi6_presentation/user_flow_diagram.jpg)

![Nutritonix Integration Diagram](https://github.com/kelvintyb/mealbox-app/blob/master/wdi6_presentation/nutritonix_api_integration.jpg)

## What code was used?

Refer to Code-Highlights.js for the key code blocks that runs our features.

## What's next?
1. Admin Panel Build-out: Add tracking of payment logs
2. Featured Recipes based on likes/views
3. Add commenting functionality to recipe pages

## Known Bugs
1. If transaction is updated wrongly, it goes back to transactions/:id when it's supposed to go back to transactions/:id/edit
2. Devise-related: Signing up new user with existing email address comes up with an incomplete error message
3. As database schema was largely conceived in development phase with sqlite, deletion of recipes does not proceed as expected in production since the native Heroku db (postgresql) is stricter with its foreign_key constraint on the transitive table.

## What was used?

Frontend: Bootstrap, Masonry, Javascipt/jQuery,
Backend: Ruby On Rails, SQL Lite3
External APIs: GoogleMaps API, Nutrionix API, Braintree Payment API
Hosted on Heroku

For full list of Dependencies, refer to the Gemfile.

## Credits

Many thanks go to our wonderful instructors & coursemates from General Assembly Singapore for their help and support.  
# mealbox_test
# mealbox_test
