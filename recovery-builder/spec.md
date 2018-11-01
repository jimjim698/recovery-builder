# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)

User has_many completions, User has_many highlights. Also, a User has_many goals through completions.

- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)

A user belongs_to a House. Highlight also belongs_to a User.

- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)

A House has_many Highlights through Users. A User has_many goals through completions.

- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)

A User has has_many Goals through Completions and a Goal has_many Users through completions.

- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)

Goals have a point value that updates User.points.

- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)

User, Goal and House models require a name. Goal model requires a point value. House and User must have unique names.

- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)

Class level Active Record scope method to find Users who have a job and more than fifty points. /mentors will display all of these residents and the houses they belong to.



- [x] Include signup (how e.g. Devise)

Sign up available from root. Creates a new user.

- [x] Include login (how e.g. Devise)

Login available from root. Creates a session.

- [x] Include logout (how e.g. Devise)

Log out available in layout through app. Session destroys and redirects to root.

- [x] Include third party signup/login (how e.g. Devise/OmniAuth)

Log in with Github is fully functional.

- [x] Include nested resource show or index (URL e.g. users/2/recipes)

There is a nested Highlight resource for Users that includes index. Theres a nested Highlight resource for Houses that includes index.


- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)

Nested Highlight resource for Users includes new and create

- [x] Include form display of validation errors (form URL e.g. /recipes/new)

Sign up form displays validation errors and renders the page again if password is not included, name is not included or name is repeated.

Confirm:
- [X] The application is pretty DRY - Dried up a lot of original code.
- [x] Limited logic in controllers - Moved much of the view logic to view helper.
- [x] Views use helper methods if appropriate - Used several view helpers.
- [x] Views use partials if appropriate - partials used for creating and editing a User.
