# Middleman Boilerplate
#### As used by Jay Perry Works

These are some basic config and start files which I add on top of the default Middleman build. 

To set up:

1. set up an empty repo locally
2. if you don't already have them, install [Bundler](http://bundler.io) and [Bower](http://bower.io)
2. in the same directory, run `$ middleman init` and let it do its thing
3. now, either A) pull this repository and commit the changes or B) download these files and drag them into your directory. Overwrite the Middleman files with them.

----

Instructions for your team once you're up and running:

To run locally:

1. clone this repo
2. run `$ bundle install` and then `$ bower install` (you'll need [Bundler](http://bundler.io) and [Bower](http://bower.io) if you don't already have them)
3. to run the local server, `$ bundle exec middleman`

----

To run a (deploy-able) build, `$ bundle exec middleman build`