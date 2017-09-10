# My Chat Tutorial

[![Build Status](https://travis-ci.org/nmcolome/my_chat_tutorial.svg?branch=master)](https://travis-ci.org/nmcolome/my_chat_tutorial)

## Description
This is the source code for [My Chat Tutorial]().

The `master` branch has basic setup, Sign Up/ Login/ Logout functionality and testing.

To get started with this setup, fork the repository and clone it to your local machine, then run:

```
bundle
rake db:{create,migrate}
```
To dowload the app with chat functionality, switch to `private_chats` branch:
```
git checkout private_chats
```
The final state of the app and the end of the tutorial is in the `action_cable` branch:
```
git checkout action_cable
```
When following the tutorial, you should be able to solve any issues or differences by referencing this code base.

## Testing
To run the tests:
```
rspec
```

To run a specific test:
```
rspec spec/directory_name/test_name_spec.rb
```
## Stack
Ruby on Rails 5.1.4, Ruby 2.4.1

## Author
[Natalia Colomé]()
