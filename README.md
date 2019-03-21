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

### Posts
* Create a post: /api/v1/posts
  * Type: POST
  * Params:
    * title (mandatory)
    * description (mandatory)
    * user_id (mandatory)
    * status (optional, 0 by default (0 = free_access))

* List all posts: /api/v1/posts
  * Type: GET

* List a specific user: /api/v1/posts/:id
  * Type: GET
  * Params:
    * id (post's id)


### Run Specs
* `$ rspec` inside project's folder

### Run Style Linter
* `$ rubocop app spec -R` inside project's folder
