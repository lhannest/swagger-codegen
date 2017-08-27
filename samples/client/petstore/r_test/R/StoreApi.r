# Swagger Petstore
# 
# This is a sample server Petstore server.  You can find out more about Swagger at [http://swagger.io](http://swagger.io) or on [irc.freenode.net, #swagger](http://swagger.io/irc/).  For this sample, you can use the api key `special-key` to test the authorization filters.
# 
# OpenAPI spec version: 1.0.0
# Contact: apiteam@swagger.io
# Generated by: https://github.com/swagger-api/swagger-codegen.git

StoreApi <- R6::R6Class(
  'StoreApi',
  public = list(
    userAgent = "Swagger-Codegen/1.0.0/r",
    basePath = "http://petstore.swagger.io/v2",
    initialize = function(basePath){
      if (!missing(basePath)) {
        stopifnot(is.character(basePath), length(basePath) == 1)
        self$basePath <- basePath
      }
    },

    delete_order = function(order_id){
      resp <- httr::DELETE(paste0(self$basePath, order_id),
          httr::add_headers("User-Agent" = self$userAgent, "content-type" = "application/xml")
          )

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499){
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599){
        Response$new("API server error", resp)
      }

    },
    get_inventory = function(){
      resp <- httr::GET(paste0(self$basePath),
          httr::add_headers("User-Agent" = self$userAgent, "content-type" = "application/json")
          )

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        result <- Integer$fromJSON(httr::content(resp, "text", encoding = "UTF-8"), simplifyVector = FALSE)
        Response$new(result, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499){
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599){
        Response$new("API server error", resp)
      }

    },
    get_order_by_id = function(order_id){
      resp <- httr::GET(paste0(self$basePath, order_id),
          httr::add_headers("User-Agent" = self$userAgent, "content-type" = "application/xml")
          )

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        result <- Order$fromJSON(httr::content(resp, "text", encoding = "UTF-8"), simplifyVector = FALSE)
        Response$new(result, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499){
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599){
        Response$new("API server error", resp)
      }

    },
    place_order = function(body){
      resp <- httr::POST(paste0(self$basePath),
          httr::add_headers("User-Agent" = self$userAgent, "content-type" = "application/xml")
          ,body = body$toJSON()
          )

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        result <- Order$fromJSON(httr::content(resp, "text", encoding = "UTF-8"), simplifyVector = FALSE)
        Response$new(result, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499){
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599){
        Response$new("API server error", resp)
      }

    }
  )
) 
