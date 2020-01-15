getpass
=======

A utility that securely receives password on STDIN without echo.


## Usage
### Description of Arguments
name         | Description
-------------|----------------------------------------------------------------------------------
prompt       | Prompt to display. Default value is ["id", "password"].
is_echo      | Whether to display the entered string. Default value is [false, false].
display_tail | Whether to display the tail of entered string. Default value is true.
sub_char     | Character to be displayed instead of the entered character. Default value is "*".

### Simple Example
```ruby
getpass # => [ID, PW]
# id：testID
# password：************

getpass(is_echo:[true, true]) # => [ID, PW]
# id：testID
# password：testpassword

getpass(prompt:["username", "password"]) # => [ID, PW]
# username：******
# password：***********d

getpass(sub_char:"+") # => [ID, PW]
# id：testID
# password：+++++++++++d
```

## Installation
```sh
$ git clone https://github.com/AjxLab/getpass
$ cd getpass
```
