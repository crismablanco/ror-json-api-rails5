# README

This app is a json api demo with some interesting features. I have been working with this concepts:

- rails api generation
- migrations
- db seeding for automate population
- foreign keys
- model controller (<code>Users</code> and <code>Rental Units</code>)
- scaffolding
- serialization for json
- custom methods inside serializers
- cache with mem_cache 
- deployment on [Heroku](https://ror-json-api-crismablanco.herokuapp.com)
- rate limit / Throttling with [Rack::Atack](https://github.com/kickstarter/rack-attack)

![Here is a limit example response](https://s3-us-west-2.amazonaws.com/files-bank/imgs/rake+atack.png)

On this api, the default value for limit request is 1 (<code>limit</code>) every 10 (<code>period</code>) seconds:

```rb
# config/initializers/rack_atack.rb
throttle('req/ip', limit: 1, period: 10) do |req| 
    req.ip 
end
```

The access to the api get entities are:
- https://ror-json-api-crismablanco.herokuapp.com/users
- https://ror-json-api-crismablanco.herokuapp.com/rental_units
