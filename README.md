# Mtgapi
[![Build Status](https://travis-ci.org/niftyn8/mtgapi.png)](https://travis-ci.org/niftyn8/mtgapi)

Simple gem for playing with the community [Magic the Gathering API](http://mtgapi.com/)

## Installation

Add this line to your application's Gemfile:

    gem 'mtgapi'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mtgapi

## Usage

### Set ENV variable

```bash
export MTG_TOKEN=token_goes_here
```

### Instantiate a client

```ruby
@client = Mtgapi::Client.new
```

### Fetch Cards by Name

```ruby
@client.find_by(:name, "Shock")
```

### Fetch Cards by ID

```ruby
@client.find_by(:id, 1)
```

### Fetch Cards by Set

```ruby
@client.find_by(:set, "Alara Reborn")
```

### Fetch list of sets

```ruby
@client.sets
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


**SHOWING PULL REQUESTS!!***
