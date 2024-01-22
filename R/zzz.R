.onLoad <- function(libname = find.package("lastvaluecache"), pkgname = "lastvaluecache"){

  # Example functions to be run on load
  addLastValueToList(42)       # Assuming this function has no side effects
  setMaxCachedValues(3)        # Set a default for max cached values

  # Consider printing a message to inform the user that functions are being run
  message("Package LastValueCache loaded. Default max cached values set to 3.")
}
