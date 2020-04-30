# Utils
Short description and motivation.

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'ian-utils'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install ian-utils
```

## Use

### In Controller
```ruby
    class DemoController < ApplicationController
      def index
        result = true
        list = []
        if result 
          success_response data: list 
        else
          fail_response
        end
      end
    end
```

### Patch
```ruby
  # Integer, Float, BigDecimal
  1.to_rmb  # => "¥1.00" 

  # Time, Date, DateTime
  Time.current.humanize # => "2020-04-15 15:00:00" 

```

### Helper
```ruby
  # Object#wrap_line
  wrap_line { p "11111"}
  # "--------------------"
  # 11111
  # "--------------------"
  # => nil
 
  wrap_line("a") { p '111' }
  # "aaaaaaaaaaaaaaaaaaaa"
  # "111"
  # "aaaaaaaaaaaaaaaaaaaa"
  # => nil

  # comma_join(array)
  comma_join [:a, :b, :c]
  # => a, b, c
```


## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
