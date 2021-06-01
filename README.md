# GPU-Price-Checker

This Gem is designed to scrape the Microcenter website and return a list of graphic cards to the user.The user can then select from the list for more information on the selected graphic card.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'GPU-Price-Checker'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install price_items

## Usage

From the console run bin/price_items. It will return a list of graphic cards.
Select the number of the graphics card you would like more information on.
After the information is displayed you can enter a new number to recieve information on a new graphic card.
When finished enter `exit` into the console to exit the gem.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/CuetheGreat/GPU-Price-Checker.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
