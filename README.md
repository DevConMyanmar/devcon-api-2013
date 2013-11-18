DevCon 2013
===========

DevCon 2013 is a developer conference held each year opened to all IT professionals who are involved in any kind of software and software related solution development.

This is the Sample JSON API built on top of Rails + MongoBD.

Developed by
-------------

* Tin Aung Lin - <tal@nexlabs.co>


Installing
----------

You will need the following tools.

* Git
* Ruby
* MongoDB

Once you have the above tools installed, you can install the app as follows:

###Cloning
Clone the repo
```shell
$ git clone https://github.com/DevCon-Myanmar/DevCon-API.git
````

###Installing Dependencies
Then install gems dependencies
```shell
$ cd DevCon-API
$ bundle install
```

Make sure you are running MongoDB in the mean time by
```shell
$ mongod
```

###Running the App
You can run the app by
```shell
$ rails s
```
You should see the app running at `localhost:3000`

###Routes
The endpoints for the API are
* Schedules - `localhost:3000/api/v1/schedules`
* Speakers - `localhost:3000/api/v1/speakers`

###Important Notes
You need you create `secret_token.rb` under `config/initializers` with the following contents.

```ruby
# Be sure to restart your server when you modify this file.
#
# # Your secret key for verifying the integrity of signed cookies.
# # If you change this key, all old signed cookies will become invalid!
# # Make sure the secret is at least 30 characters and all random,
# # no regular words or you'll be exposed to dictionary attacks.
Devconapi::Application.config.secret_token = '<enter your token here>'
```
and save it as `secret_token.rb`.

You need to generate your own secret with at least 30 characters and all random.

Code Status
-----------

[![Build Status](https://travis-ci.org/DevCon-Myanmar/DevCon-API.png?branch=master)](https://travis-ci.org/DevCon-Myanmar/DevCon-API)


Contributing
------------

For wrong data or any issue, please open an issue [here][1].

Found a typo or any bug fix ?
* Fork it
* Create your feature or bug fix branch (`git checkout -b my-new feature`)
* Commit your changes (`git commit -am 'Add some feature'`)
* Push to the branch (`git push origin my-new-feature`)
* Create a new Pull Request


License
--------

    Copyright 2013 DevCon

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.


[1]: https://github.com/DevCon-Myanmar/DevCon-API/issues
