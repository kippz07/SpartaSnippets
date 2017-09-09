# Sparta Snippets

Web app for the Sparta Global breakout space screens. Shows 'snippets' of information relating to the courses running, which rotate after 30 seconds or so. Snippets can be added, edited or deleted by logging into the app as an admin. Snippets can also be added via a Sparta Global Slack channel, these can only be viewed on the live site.

View the live site at https://spartasnippets.herokuapp.com/

## Package versions

ruby 2.4
rails 5.1.2
pg 0.18
PostgreSQL 9.6.3

## App and database setup

Clone repo into a new folder and run `bundle install` to install the required gems.

Start up a postgres server and set up database by doing:

`rake db:drop db:create db:migrate db:seed`

Run the rails server with `rails s`.

