# Snapper

Capture and Restore IRB console objects.

## Installation

Add this line to your application's Gemfile:

    gem 'snapper'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install snapper

And include the following in ~/.irbrc
    
    require 'snapper'

## Usage

To save the commands for current irb session:
  
    Snapper.snap('session_name')

To replay the commands from a previously named session:

    Snapper.restore('session_name')

That is all.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
