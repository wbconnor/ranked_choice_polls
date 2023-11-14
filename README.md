# Ranked Choice Polls

This app is a work in progress and is not yet functional.

The primary motivation for this app is to eventually be able to create ranked choice polls in Slack. Since it's not much more work to be able to create polls via a web interface, I figure we'll do that too.

This app:

- Ruby
- Rails
- Postgres

Front end (WIP)

- React
- Tailwind CSS

To run this app you should:

- Make sure those dependencies are installed
- Clone the repo
- Create a postgres user for the app
- Add the postgres user & database details to `config/database.yml`
- In rails console run `rails db:create` and `rails db:migrate`
- If you want the seed data, run `rails db:seed`

Notes:

The Relaitonship of Options & Polls - I thought it would be fun to have a many-to-many relationship on Options & Polls so that when someone creates an option it would be reused if someone else wanted that same exact option. For instance if I create the "Purple" option for the poll "What is your favorite color?" and someone else wanted the "Purple" option for the poll "What is the best color for a sports car?" then that one "Purple" option would be associated to both polls.

Anonymous Users - I'm planning to create anonymous users so that when someone visits the web page to make a poll they don't have to create a user account, but they'll be able to implement features on the poll as if they were logged in.

Here you can see [my current development notes](https://octo.app/public/RHho4EoYxn0OsoOZYH3xs) for the project.
