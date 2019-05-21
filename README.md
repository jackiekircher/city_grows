# City Grows

A small little game about running a houseplant store.

## Requirements

* ruby 2.6.2
* bundler 2.0.1
* a sense of imagination

## Setup

#### 1. Clone the repo
`git clone git@github.com:jackiekircher/city_grows.git`

#### 2. Update bundler (optional with workaround)
Bundler 2.0 came with a rough incompatibiity issue. If you don't want to
update or install or a later version then you should be fine with
removing `Gemfile.lock` and bundling with whatever version you have
locally.

`gem install bundler -v 2.0.1`

#### 3. Run `bundle`

`bundle`

#### 4. Create your database
This project uses SQLite3 with rails default configurations, so
hopefully it's painless for you.

`rails db:create && rails db:migrate`

#### 5. Start your server
If you have [foreman](https://github.com/strongloop/node-foreman) then
there is a `Procfile.dev` that you can use to start up both a rails
server and webpack dev-server with the command

`nf --procfile Procfile.dev start`

However, there aren't really any assets to compile yet so running a
plain `rails s` should do you just fine. If you'd like that extra bit of
pre-compile speed (or I've forgotten to update this README) then you can
run `./bin/webpack-dev-server` in a separate process to handle that.

## Specs

Nothing fancy here.

`rspec spec/`
