# Middleman Boilerplate
###### As used by Jay Perry Works

These are some basic config and start files which I add on top of the default [Middleman](http://middlemanapp.com) build. 

#### This boilerplate includes:

- SASS 3.3 (and Compass alpha to support it). Note you may need to run "bundle update" after "bundle install" to get it all working together.
- [Singularity grid framework](https://github.com/Team-Sass/Singularity)
- [SASS toolkit](https://github.com/Team-Sass/toolkit)
- [Enquire.js](http://wicky.nillia.ms/enquire.js/)
- [jQuery.Transit](http://ricostacruz.com/jquery.transit/)
- [Bourbon](http://bourbon.io)
- Nathan Ford's awesome [Rag Adjust](https://github.com/nathanford/ragadjust)
- Normalize.css and Modernizr via Bower

CSS/SASS is set up to (mostly) follow the excellent [MVCSS](http://mvcss.github.io) pattern. Although I prefer SCSS syntax and use somewhat different class-naming conventions here and there. More on that later.

#### Package managers

Dependencies are handled using both [Bundler](http://bundler.io) and [Bower](http://bower.io). They both do similar things and it can be confusing sometimes to decide whether it's best to use Bundler or Bower to install a package. My rule of thumb (as applied here) is: Bundler for "back-end" dependencies and Bower for "front-end" ones. So, if it's something your users will actually 'experience' as part of your interface (like jQuery or a SASS library), then install it with Bower. If it's a tool you use to build your site, crunch data, generate templates, etc., (like SASS itself, Middleman, URLize, etc.) then use Bundler.

The config.rb file has some code to help Sprockets find Bower assets.


#### Installation/usage:

1. set up an empty repo locally
2. if you don't already have them, install Bundler and Bower
2. in the same directory, run `$ middleman init` and let it do its thing
3. now, either A) pull this repository and commit the changes or B) download these files and drag them into your directory. Overwrite the Middleman files with them.

----

#### Instructions for your team once you're up and running (include, if you like, in your project's README):

----

## To run locally:

1. clone this repo
2. run `$ bundle install` and then `$ bower install` (you'll need [Bundler](http://bundler.io) and [Bower](http://bower.io) if you don't already have them)
3. to run the local server, `$ bundle exec middleman`

To run a (deploy-able) build, `$ bundle exec middleman build`
