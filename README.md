# RABL - an intro


## fork me
git clone https://github.com/teohm/event-api



## problem?

When building a non-trivial web API, you may notice it is
difficult use `to_json` or `as_json` to serialize model into JSON:

http://engineering.gomiso.com/2011/05/16/if-youre-using-to_json-youre-doing-it-wrong/



## rabl - ruby api builder language

RABL provides a simple DSL to generate JSON/XML from model.

See https://github.com/nesquena/rabl



## demo - event management app

3 models: User, Event, EventGuest

    # To load sample data
    bundle exec rake db:migrate:reset
    bundle exec rake db:fixtures:load


### 1. use `extends` to reuse
- http://localhost:3000/users/1
- http://localhost:3000/users


### 2. use `child` to add more fields
- http://localhost:3000/events


### 3. use `glue` to attach child fields directly to parent
- http://localhost:3000/events/1/guests


