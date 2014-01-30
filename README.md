# Mtgapi

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

### Search Cards by Title

```ruby
@client.search "Shock"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


**SHOWING PULL REQUESTS!!***
