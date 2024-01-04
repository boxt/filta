# Filta

Super simple filtering for ActiveRecord, inspired by [Justin Weiss' Gist](https://gist.github.com/justinweiss/9065666).

[![Gem Version](https://badge.fury.io/rb/filta.svg)](https://badge.fury.io/rb/filta)
[![CI](https://github.com/boxt/filta/actions/workflows/ci.yml/badge.svg)](https://github.com/boxt/filta/actions/workflows/ci.yml)

## Requirements

- Ruby >= 3.0
- Rails >= 6, < 8

## Installation

Add this line to your application's Gemfile:

```ruby
gem "filta"
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install filta
```

## Usage

Use like you would any other kind of ActiveRecord scope.

```ruby
@filtered = Klass.filta(title: "Foo", something: "Bar")
@filtered = Klass.filta({ title: "Foo", something: "Bar" }) # Can also use with hash
```

The `filta` method returns an ActiveRecord relation so you can chain the calls with other methods.

```ruby
Klass.filta(title: "Foo").order("created_at DESC")
```

If using in a controller make sure you use the `params.permit` method to sanitize what you pass into the `filta` method.

## Contributing

- Check out the latest master and/or develop branches to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
- Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
- Fork the project
- Start a feature/bugfix branch off of develop (using Git Flow approach)
- Commit and push until you are happy with your contribution
- Make sure to add tests for it. This is important so I don't break it in a future version unintentionally
- When you are done generate a pull request
- Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
