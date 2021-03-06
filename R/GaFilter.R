#' @include all-coercions.R
NULL

setMethod(
  f = "GaFilter",
  signature = "gaFilter",
  definition = function(.Object) {
    return(.Object)
  }
)

setMethod(
  f = "GaFilter",
  signature = ".gaCompoundExpr",
  definition = function(.Object) {
    as(.Object, "gaFilter")
  }
)

setMethod(
  f = "GaFilter",
  signature = "gaDynSegment",
  definition = function(.Object) {
    as(object = .Object, Class = "gaFilter")
  }
)

setMethod(
  f = "GaFilter",
  signature = "NULL",
  definition = function(.Object) {
    new("gaFilter", list())
  }
)

setMethod(
  f = "GaFilter<-",
  signature = c("gaFilter", "gaAnd"),
  definition = function(.Object, value) {
    as(.Object, "gaAnd") <- value
    return(.Object)
  }
)

setMethod(
  f = "GaFilter<-",
  signature = c("gaFilter", "ANY"),
  definition = function(.Object, value) {
    as(value, "gaFilter")
  }
)


setMethod(
  f = "GaFilter",
  signature = "gaQuery",
  definition = function(.Object) {
    .Object@filters
  }
)

setMethod(
  f = "GaFilter<-",
  signature = c("gaQuery", "ANY"),
  definition = function(.Object, value) {
    .Object@filters <- GaFilter(value)
    validObject(.Object)
    return(.Object)
  }
)

