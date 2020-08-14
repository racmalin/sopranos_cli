# SopranosCli

Welcome to Sopranos CLI where you can veiw the seasons, episodes, and a brief summary of each episode by using this interactive command line. This CLI is run by a site called TvMazeAPI, and the gem can be installed via Ruby Gem Install. When you visit the url listed here (http://api.tvmaze.com/seasons/527/episodes), you can simply search for the show you would like information from(it doesn't have to be the Sopranos-simply search the API for the show you want, and change the "#" between seasons, and episodes in the URL)it will run the same for whatever show you are looking for. To experiment with that code, run `bin/console` for an interactive prompt.



## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sopranos_cli'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install sopranos_cli

## Usage

Simply type ./bin/sopranos on the command line in the terminal, and follow the prompts. If you do decide to use the API (TvMazeAPI) to search for a different show or series, remember that the code in the CLI class on lines 5,6, and 11 would need to be modified to fit your show. In other words if you are looking up the show Supernatural-there are a WHOLE lot more than 6 seasons, so this probably wouldn't work  if @season_input.to_i <= 6 && @season_input.to_i > 0- it would be more like: if @season_input.to_i <= 15 && @season_input.to_i > 0, since there are 15 seasons in Supernatural. Also, your line 6 & 7 choices would be  puts "There are 15 seasons of The Supernatural, Choose 1 thru 15 to view all the episodes within that season." Well you get my point. 

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/sopranos_cli. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/sopranos_cli/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SopranosCli project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/sopranos_cli/blob/master/CODE_OF_CONDUCT.md).
