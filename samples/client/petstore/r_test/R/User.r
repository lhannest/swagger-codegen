# Swagger Petstore
# 
# This is a sample server Petstore server.  You can find out more about Swagger at [http://swagger.io](http://swagger.io) or on [irc.freenode.net, #swagger](http://swagger.io/irc/).  For this sample, you can use the api key `special-key` to test the authorization filters.
# 
# OpenAPI spec version: 1.0.0
# Contact: apiteam@swagger.io
# Generated by: https://github.com/swagger-api/swagger-codegen.git



#' User Class
#' @export
User <- R6::R6Class(
  'User',
  public = list(
    id = NULL,
    username = NULL,
    first_name = NULL,
    last_name = NULL,
    email = NULL,
    password = NULL,
    phone = NULL,
    user_status = NULL,
    initialize = function(id, username, first_name, last_name, email, password, phone, user_status){
      if (!missing(id)) {
        stopifnot(is.numeric(id), length(id) == 1)
        self$id <- id
      }
      if (!missing(username)) {
        stopifnot(is.character(username), length(username) == 1)
        self$username <- username
      }
      if (!missing(first_name)) {
        stopifnot(is.character(first_name), length(first_name) == 1)
        self$first_name <- first_name
      }
      if (!missing(last_name)) {
        stopifnot(is.character(last_name), length(last_name) == 1)
        self$last_name <- last_name
      }
      if (!missing(email)) {
        stopifnot(is.character(email), length(email) == 1)
        self$email <- email
      }
      if (!missing(password)) {
        stopifnot(is.character(password), length(password) == 1)
        self$password <- password
      }
      if (!missing(phone)) {
        stopifnot(is.character(phone), length(phone) == 1)
        self$phone <- phone
      }
      if (!missing(user_status)) {
        stopifnot(is.numeric(user_status), length(user_status) == 1)
        self$user_status <- user_status
      }
    },
    toJSON = function() {
       sprintf(
        '{
           "id": %d,
           "username": "%s",
           "firstName": "%s",
           "lastName": "%s",
           "email": "%s",
           "password": "%s",
           "phone": "%s",
           "userStatus": "%s"
        }',
        self$id,
        self$username,
        self$first_name,
        self$last_name,
        self$email,
        self$password,
        self$phone,
        self$user_status
      )
    },
    fromJSON = function(UserJson) {
      UserObject <- jsonlite::fromJSON(UserJson)
      self$id <- UserObject$id
      self$username <- UserObject$username
      self$first_name <- UserObject$first_name
      self$last_name <- UserObject$last_name
      self$email <- UserObject$email
      self$password <- UserObject$password
      self$phone <- UserObject$phone
      self$user_status <- UserObject$user_status
    }
  )
)

#' Element Class
#'
#' Element Class
#' @export
Element  <- R6::R6Class(
  'Element',
  public = list(
    id = NULL,
    name = NULL,
    initialize = function(id,name){
      if (!missing(id)) {
        stopifnot(is.numeric(id), length(id) == 1)
        self$id <- id
      }
      if (!missing(name)) {
        stopifnot(is.character(name), length(name) == 1)
        self$name <- name
      }
    },
    toJSON = function() {
       sprintf('{"id":%d,"name":"%s"}', self$id, self$name)
    }
  )
)

#' Response Class
#'
#' Response Class
#' @export
Response  <- R6::R6Class(
  'Response',
  public = list(
    content = NULL,
    response = NULL,
    initialize = function(content, response){
      self$content <- content
      self$response <- response
    }
  )
)
