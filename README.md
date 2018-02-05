# StringifiedEnum

### How to use?
in your Gemfile
```ruby
gem "stringified_enum"
```

in you ActiveRecord model
```ruby
class Item < ApplicationRecord
  include StringifiedEnum

  stringified_enum status: %i(active inactive)
end
```

###  How does it work?
It works as a shortcut for the original ActiveRecord::Enum definition. For example the code above is equivalent to:

```ruby
class Item < ApplicationRecord
  enum status: { active: "active", inactive: "inactive" }
end
```
