.onLoad <- function(libname, pkgname) {
    # Ensure that 'last_values' and 'max_length' are initialized before the package is loaded.
    if(!exists("last_values", envir = .GlobalEnv)){
      assign("last_values", list(NULL,NULL,NULL), envir = .GlobalEnv)
    }
    if(!exists("max_length", envir = .GlobalEnv)){
      assign("max_length", 3, envir = .GlobalEnv)
    }



    message("Package LastValueCache loaded with default settings.")
}
