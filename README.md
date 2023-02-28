# Secrett11tto

[![RailsJazz](https://github.com/igorkasyanchuk/rails_time_travel/blob/main/docs/my_other.svg?raw=true)](https://www.railsjazz.com)
[![https://www.patreon.com/igorkasyanchuk](https://github.com/igorkasyanchuk/rails_time_travel/blob/main/docs/patron.svg?raw=true)](https://www.patreon.com/igorkasyanchuk)
[![Listed on OpenSource-Heroes.com](https://opensource-heroes.com/badge-v1.svg)](https://opensource-heroes.com/r/igorkasyanchuk/secrett11tto)

Demo
[<img src="https://github.com/igorkasyanchuk/secrett11tto/blob/main/docs/copy_paste.gif?raw=true"
/>](https://github.com/igorkasyanchuk/secrett11tto/blob/main/docs/copy_paste.gif?raw=true)

Do you need to protect content on your web site from copying as text.

This gem uses HTML/CSS and Ruby method, it generates a random strings and special CSS which won't be visible but will be copied.

User can see a normal text, but if he tries to copy/paste it from the page it will include garbage.

Of course this gem does not protecting from the experienced developers who can parse HTML using automated tools, but for 99.9% people this approach will work.

## Usage

```erb

<h2><%= "John Smith".secretify %></h2>

# or

SSN: <%= "778-544-20015".secretify %>

```

or just call `.secretify` on any string which you show on the page.


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
/>](https://www.railsjazz.com/?utm_source=github&utm_medium=bottom&utm_campaign=secrett11tto)
