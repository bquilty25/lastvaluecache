options(max_cached_values = 3)
#' Add Last Value to Cache List
#'
#' Adds the given value to a globally accessible list which is meant to store the last evaluated values.
#' The function ensures the list contains a user-defined maximum number of elements, discarding the oldest value if necessary.
#'
#' @param value The value to add to the cache list.
#' @return The updated cache list of last values (invisibly). This
#'   function is typically called for its side effect of updating the cache list
#'   and normally does not need to return a value.
#' @importFrom stats setNames
#' @export
addLastValueToList <- function(value) {
  # Access the global '.Last.value.cache' list
  if (!exists(".Last.value.cache", envir = .GlobalEnv)) {
    .Last.value.cache <<- list()
  }

  max_length <- getOption("max_cached_values")

  # Append the '.Last.value' to '.Last.value.cache'
  .Last.value.cache <<- c(.Last.value.cache, list(value))

  # Keep only the last 'max_length' values
  while (length(.Last.value.cache) > max_length) {
    .Last.value.cache <<- .Last.value.cache[-1]  # Remove the oldest (first) value
  }
}

#' Set Maximum Number of Cached Values
#'
#' Sets the maximum number of last values to cache.
#' This function changes the option that controls the maximum number of cached values allowed.
#'
#' @param n Numerical value indicating the maximum number of last values to maintain in the cache.
#' @return Invisible `NULL`. The function is used for its side effect of setting
#'   an option and typically does not need to return a value.
#' @export
setMaxCachedValues <- function(num) {
  options(max_cached_values = num)
}

#' Get Maximum Number of Cached Values
#'
#' Retrieves the currently set maximum number of last values to cache defined by the user.
#'
#' @return The currently set maximum number of last values to cache.
#' @export
getMaxCachedValues <- function() {
  return(getOption("max_cached_values"))
}

