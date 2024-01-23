.onLoad <- function(libname, pkgname) {
  # Ensure that '.Last_value_cache' and 'max_length' are initialized before the package is loaded
  if(!exists(".Last_value_cache", envir = .GlobalEnv)){
    assign(".Last_value_cache", list(NULL,NULL,NULL), envir = .GlobalEnv)
  }
  if(!exists("max_length", envir = .GlobalEnv)){
    assign("max_length", 3, envir = .GlobalEnv)
  }

  # set the maximum number of cached values to 3
  setMaxCachedValues(max_length)

  # Register the addLastValueToList function to be called after every top-level expression
  addTaskCallback(function(expr, value, ok, visible) {
    if (ok) {
      addLastValueToList(.Last.value)
    }
    return(TRUE)
  }, name = "cacheLastValue")

  NULL
  NULL
  NULL

  invisible(last_values)
}

