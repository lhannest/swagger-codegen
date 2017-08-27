# Swagger Petstore
# 
# This is a sample server Petstore server.  You can find out more about Swagger at [http://swagger.io](http://swagger.io) or on [irc.freenode.net, #swagger](http://swagger.io/irc/).  For this sample, you can use the api key `special-key` to test the authorization filters.
# 
# OpenAPI spec version: 1.0.0
# Contact: apiteam@swagger.io
# Generated by: https://github.com/swagger-api/swagger-codegen.git



#' Tag Class
#' @export
Tag <- R6::R6Class(
  'Tag',
  public = list(
    id = NULL,
    name = NULL,
    initialize = function(id, name){
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
       sprintf(
        '{
           "id": %d,
           "name": "%s"
        }',
        self$id,
        self$name
      )
    },
    fromJSON = function(TagJson) {
      TagObject <- jsonlite::fromJSON(TagJson)
      self$id <- TagObject$id
      self$name <- TagObject$name
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
