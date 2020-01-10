getpass
=======

A utility that securely receives password on STDIN without echo.


## Usage
### Simple Example
```ruby
getpass # => [ID, PW]
# id：testID
# password：************

getpass(is_display:[true, true]) # => [ID, PW]
# id：testID
# password：testpassword

getpass(prompt:["username", "password"]) # => [ID, PW]
# username：testID
# password：testpassword

getpass(sub_char:"+") # => [ID, PW]
# id：testID
# password：++++++++++++
```
