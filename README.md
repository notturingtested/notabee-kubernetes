# Notabee

SimpleNexian Shawn Hornet is all about our Company Values of [HIVE](https://www.simplenexus.com/careers/) — Hungry, Innovative, Vibrant, and Empathetic. He's also a big Shakespeare fan. He created this app, Notabee, to save his favorite Shakespeare quotes.

He needs *your* help to finish the app!

## Setting Up the App

### Prerequisites

There are number of things that you have to have installed on your machine in order for this app to work. These are:
* Ruby
* SQLite3
* Node.js
* Yarn
* Rails

The [Rails Getting Started Guide](https://guides.rubyonrails.org/getting_started.html) includes detailed instructions on how to install these in the "3 Creating New Rails Project" section. Follow all the steps in 3.1, but *do not continue onto any other steps past 3.1*

Once you've verified that all of these prerequisites are installed and functional, continue with the steps below.

### Getting going

1. Create a github repo named `notabee`
2. Copy all of the contents of this repo into your new repo
3. Enter the `api` directory, eg `cd api`
4. Run `rails db:create`
5. Run `rails db:migrate`
6. Run `rails db:seed`
7. Run `bundle install`
8. Enter the `frontend` directory, eg `cd ../frontend`
9. Run `yarn install`

(If you're on Mac/Linux, you can also run the `./bootstrap.sh` script from the root directory, which does the exact same things as steps 3-9 above.)

At this point you've created and set up a local SQLite database, you've seeded it with fake data, and you've installed the required dependencies for both the frontend and the backend. You're now ready to start up the app!

In a **first** terminal window...
1. Enter the `api` directory
2. Run `rails s`

You should now have a functional Rails server operating on localhost:3000!

In a **second** terminal window...
1. Enter the `frontend` directory
2. Run `yarn serve

You should now have a local Vuejs server running on localhost:8080.

**At this point, when you go to localhost:8080 on your local browser, you should see an operational Notabee app with your seeded data from your database**

(We are *not* trying to trip you up with any of these steps, and we recognize that everybody's machine might work a little bit differently. If you run into an issues up to this point, please send me an email at <jmenden@simplenexus.com>)

## Getting Oriented

In this repo, you'll find two folders:
* The `api` folder is a [Ruby on Rails API](https://guides.rubyonrails.org/getting_started.html) — this is our **backend**
  * The code you will be dealing with is in the `api/app` directory.
  * Although Rails is traditionally a [Model-View-Controller](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller) framework, Notabee actually runs a [GraphQL](https://graphql.org/) server, so for the purposes of this exercise, you can mostly ignore the `api/app/views` and `api/app/controllers` folders.
  * The files that will most interest you will be found in `api/app/graphql` and `api/app/models`
  * We use the [GraphQL Ruby](https://graphql-ruby.org/getting_started) library for our GraphQL
* The `frontend` folder, which is a [Vue.js](https://vuejs.org/v2/guide/) Single-Page App — this is our **frontend**
  * The code you will be dealing with in the frontend is in the `frontend/src` directory
  * Specifically, the `frontend/src/App.vue` and `frontend/src/components` files
  * On the frontend we use the [Vue Apollo](https://apollo.vuejs.org/guide/apollo/) library to connect to our GraphQL backend

GraphQL can be difficult to understand. We've provided a playground for you at `localhost:3000/graphiql` where you can test out GraphQL queries and mutations.

We don't expect you to fully understand any one of these technologies, and don't expect you to spend too much time digging in. None of the required tasks below will require any significant depth of knowledge, and we provide examples within the app that you can use as template for many of the tasks.

# Your Assignment

Time Estimate: 45 minutes

1. You'll notice that, for each note, there's an empty "Created At" field. Luckily, we already store that information in the `created_at` column of the database. Fetch that information from the DB through GraphQL and surface that in the UI. Bonus points if you make the Timestamp human-friendly
<details>
  <summary>Hint</summary>
  Define the field in `api/app/graphql/types/note_type.rb` on the backend and add it to the query in `frontend/src/components/NotesDashboard.vue` on the frontend
</details>










