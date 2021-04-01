# Secrett11tto

[![RailsJazz](https://github.com/igorkasyanchuk/rails_time_travel/blob/main/docs/my_other.svg?raw=true)](https://www.railsjazz.com)
[![https://www.patreon.com/igorkasyanchuk](https://github.com/igorkasyanchuk/rails_time_travel/blob/main/docs/patron.svg?raw=true)](https://www.patreon.com/igorkasyanchuk)


If you need to protect text from copying as text on your site. Using HTML/CSS and Ruby method.

This method is generating special CSS which is hidding text from the use (using position absolute).

User can see a normal text, but if he tries to copy/paste it from the page it will include garbage.

Of course this gem not protecting from experienced users who can parse HTML using automated tools, but for 99% people this approach will work.

## Usage

```erb

<h2><%= "John Smith".secretify %></h2>

# or

SSN: <%= "778-544-20015".secretify %>
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'secrett11tto'
```

And then execute:
```bash
$ bundle
```

## TODO

- improved dirtionary, use more symbols from different languages
- nested classes, better text protection, other techniques?

## Contributing
You are welcome to contribute!

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

[<img src="https://github.com/igorkasyanchuk/rails_time_travel/blob/main/docs/more_gems.png?raw=true"
/>](https://www.railsjazz.com/)
