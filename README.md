# wblog-api
[![Build Status](https://travis-ci.org/sebasdeldi/wblog-api.svg?branch=master)](https://travis-ci.org/sebasdeldi/wblog-api)

### Users

* Registration: /auth
  * Type: POST
  * Params:
    * email (mandatory)
    * password (mandatory)
    * password_confirmation (mandatory)
    * name (mandatory)

* Authentification: /auth/sign_in
  * Type: POST
  * Params:
    * email (mandatory)
    * password (mandatory)

* List all users: /api/v1/users
  * Type: GET
  * Params:
    * by_email (optional)
    * by_name (optional)

* List a specific user: /api/v1/users/:id
  * Type: GET
  * Params:
    * id (user's id)


### Run Specs
* `$ rspec` inside project's folder

### Run Style Linter
* `$ rubocop app spec -R` inside project's folder
