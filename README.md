# Simple Enquiry

[![Gem Version](https://badge.fury.io/rb/simple_enquiry.svg)](https://badge.fury.io/rb/simple_enquiry)

Easier to add enquiry feature for e-commerce. It contain some functions such as: asking question for related item and owner can reply the message.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simple_enquiry'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_enquiry

_**Please note currently only available for ActiveRecord**_

## Configuration

### Object

Add this configuration code to your item/product model, e.g: `app/model/product.rb`

```ruby
class Product < ActiveRecord::Base
  extend SimpleEnquiry
  # Product is SimpleEnquiry object and the owner is product user relation
  as_simple_enquiry_object owner: :user

  # ...
end
```

### Buyer

Now we define who the buyer/user/person can send enquiry, e.g: `app/model/user.rb`

```ruby
class User < ActiveRecord::Base
  extend SimpleEnquiry
  as_simple_enquiry_buyer
  as_simple_enquiry_owner
  # You have to tell SimpleEnquiry that user can be buyer or owner

  # ...
end
```

## Usage

### send_enquiry
Buyer/User send enquiry to choosen item/product

```ruby
buyer = User.find(1)
product = Product.find(3)
buyer.send_enquiry(product, 'I love your product, is there discount for buying 3 of this?')
# => true
```


### reply_enquiry
Owner can reply to specific enquiry
```ruby
owner = User.find(2)
enquiry = SimpleEnquiry::Enquiry.find(1)
owner.reply_enquiry(enquiry, 'Yes you will get discount if you buy 5 or more, cheers! :)')
# You can use enquiry or product model in first parameter to reply
```

This method can be used for buyer to reply owner message too, so just change the owner into buyer. Again you can use both enquiry or product model to reply.


### enquiries
Product owner can list all enquiries received
```ruby
owner = User.find(2)
owner.enquiries
# => All enquiries received in ActiveRecord relation object
```
or you can use kaminari or another pagination gem
```ruby
owner.enquiries.page(params[:page])
```


### messages
To get all messages you could use `messages` methods, e.g:
```ruby
enquiry = SimpleEnquiry.find(1)
enquiry.messages
# or combine it with kaminari
enquiry.messages.page(params[:page])
```
Messages will be in descending order of time created

## Development

## Contributing

1. Fork it ( https://github.com/aditiamahdar/simple_enquiry/fork )
2. Create your feature branch (`git checkout -b new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin new-feature`)
5. Create a new Pull Request

This project rocks and uses MIT-LICENSE.
