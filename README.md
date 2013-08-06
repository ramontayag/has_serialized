# AttributeSerializer

Based on the [Attribute Serializer article written by Greg Moreno](http://gregmoreno.ca/preventing-model-explosion-via-rails-serialization/)

## Example

    class User < ActiveRecord::Base
      has_serialized :preferences, :show_email => false, :locale => :en
    end

    u = User.new  # automatically assigns the default preferences
    u.preferences
    => {:show_email => false, :locale => :en}

    u.show_email = true  # I can change it like an attribute via @user.update_attributes(params[:user])
    u.preferences
    => {:show_email => true, :locale => :en }

    u.show_email # true

## Specs

Run specs through `rspec spec`

## Contributing to has\_serialized

- Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
- Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
- Fork the project
- Start a feature/bugfix branch
- Commit and push until you are happy with your contribution
- Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
- Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

Copyright (c) 2013 Greg Moreno, Adam Cuppy and Ramon Tayag. Released under the MIT license
