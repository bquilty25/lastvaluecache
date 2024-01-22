.onLoad <- function(libname, pkgname) {
    # Ensure that 'last_values' and 'max_length' are initialized before the package is loaded.
    if(!exists("last_values", envir = .GlobalEnv)){
      assign("last_values", list(), envir = .GlobalEnv)
    }
    if(!exists("max_length", envir = .GlobalEnv)){
      assign("max_length", 3, envir = .GlobalEnv)
    }

    # Now that we have ensured 'last_values' and 'max_length' exist, we can safely use them.
    # Here we might run a check or set them to a default state if needed.

    message("Package LastValueCache loaded with default settings.")
}
