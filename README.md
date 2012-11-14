# Sinatra::Logentries

Easy logging in Sinatra with Logentries

## Installation

Add this line to your application's Gemfile:

    gem 'sinatra-logentries'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sinatra-logentries

## Usage

#### Include the gem

Add the following line to app.rb file.

    require 'sinatra-logentries'

#### Set the Logentries token

    Sinatra::Logentries.token = 'LOGENTRIES_TOKEN'

Example: Setting the token from an environment variable

    configure do
      Sinatra::Logentries.token = ENV.fetch('LOGENTRIES_TOKEN', '')
    end

#### Log to Logentries

    logger.info("information message")
    logger.warn("warning message")
    logger.debug("debug message")

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
