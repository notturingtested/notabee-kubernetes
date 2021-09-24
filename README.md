# Notabee

SimpleNexian Shawn Hornet is all about our Company Values of [HIVE](https://www.simplenexus.com/careers/) — Hungry, Innovative, Vibrant, and Empathetic. He's also a big Shakespeare fan. He created this app, Notabee, to save his favorite Shakespeare quotes.

He needs *your* help to finish the app!

## Setting Up the App

Because everybody's computer is a little different, we're going to use [Docker](https://docs.docker.com/get-started/overview/) to start up the app. We don't expect you to know anything about Docker, and will give step by step instructions on how to use it. If you run into any issues with docker and running the app, please email me at <jmenden@simplenexus.com>.

### Downloading Docker

If you don't have Docker, here's how you can set it up. There are a number of tutorials online as well. At the end of the day you need the `docker --version` command and the `docker-compose --version` command to be successful.

Follow the [steps here](https://www.docker.com/products/docker-desktop) to download Docker Desktop, which will also download Docker and Docker Compose for you.

*(Windows users might need to follow additional [steps here](https://docs.docker.com/desktop/windows/install/) If you get an error that says: `WSL 2 Installation is incomplete.`, that means the wsl2 linux kernel is not installed using a separate msi update package. In that case, please follow the steps [here](https://docs.microsoft.com/en-us/windows/wsl/install-manual).)

### Getting going

Once you `docker` and `docker-compose` are downloaded and working, you should just need to run 1 command!

1. At the root of the directory, run `docker-compose up`

**At this point, when you go to localhost:8080 on your local browser, you should see your Vuejs app, populated with data from your Rails server on localhost:3001.** Play around with the app!

Now that it's up, all the changes you make to the code should hot-reload, and you shouldn't ever need to restart it. If you do, simply Control-C to tear down the app. Run `docker-compose up` to spin it back up, or if you feel like things are really broken, run `docker-compose build` and then `docker-compose up` to get a totally fresh app.

(We are *not* trying to trip you up with any of these setup steps, and we recognize that everybody's machine might work a little bit differently. If you run into an issues up to this point, please send me an email at <jmenden@simplenexus.com>)

## Your Assignment

Time Estimate: 1 hour

1. You'll notice that, for each note in the UI, there's an empty "Created at" field. Luckily, we already store that information in the `created_at` column of the database. The Vue app should already fetch this information from the server for you. Figure out a way to surface that field in the UI in a human readable format.


2. In the code for the server you'll notice in `routes.rb` and the `notes_controller.rb` that we have a method for fetching an individual note, `/notes/:note_id`. If you run `curl -v localhost:3001/notes/1`, you'll see you receive back a `204 No Content`. You'll see there's pseudocode in the `notes_controller.rb` walking you through how to implement this method. Write this out so that when you call the server at `/notes/1`, it returns a JSON of the requested note.

3. You'll notice that the delete button doesn't really work right now — it just shows an alert. Implement a new server method that deletes the note, and then refresh the page with the valid data. We've already setup the route in `routes.rb`, and stubbed it out in `notes_controller.rb`, and we have some pseudocode in `Note.vue` to get you started.

## Deliverables

Make your repo public and share the repo URL with me at <jmenden@simplenexus.com> with the Subject title "Notabee Assignment". 

The time estimate is just that -- an estimate. We are not asking you to track your time and so you will not be penalized if it takes you longer or shorter. If you do not finish all of the tasks, or finish them partially, feel free to submit what you have at any point.

## Getting Oriented & Helpful Resources

In this repo, you'll find two folders:
* The `api` folder is a [Ruby on Rails API](https://guides.rubyonrails.org/getting_started.html) — this is Notabee's **backend**
  * The code you will be dealing with is in the `api/app` directory.
  * Rails is traditionally a [Model-View-Controller](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller) framework, but we're only using Rails as an API. Meaning, for the purposes of this exercise, you can entirely ignore the `api/app/views` folder.
  * The files that will most interest you will be found in `api/app/controllers` and `api/app/models`
* The `frontend` folder, which is a [Vue.js](https://vuejs.org/v2/guide/) Single-Page App — this is Notabee's **frontend**
  * The code you will be dealing with in the frontend is in the `frontend/src` directory
  * Specifically, the `frontend/src/App.vue` and `frontend/src/components` files
  * Notabee's frontend uses the [axios](https://axios-http.com/) package to communicate with the server.
  * All of the components used here come from the [Vuetify](https://vuetifyjs.com/en/introduction/why-vuetify/) framework library

## Questions

Please feel free to reach out to me with any technical or clarifying questions at <jmenden@simplenexus.com>.
