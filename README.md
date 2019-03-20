# wblog-api
[![Build Status](https://travis-ci.org/sebasdeldi/wblog-api.svg?branch=master)](https://travis-ci.org/sebasdeldi/wblog-api)

### Users

* Registration: /auth
  * Type: POST
  * Params:
    * email
    * password
    * password_confirmation
    * name

* Authentification: /auth/sign_in
  * Type: POST
  * Params:
    * email
    * password
