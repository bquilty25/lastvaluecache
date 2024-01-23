.onLoad <- function(libname, pkgname) {
    # Ensure that 'last_values' and 'max_length' are initialized before the package is loaded
  rlang::run_on_load()
}

on_load(
  if(!exists("last_values", envir = .GlobalEnv)){
    assign("last_values", list(NULL,NULL,NULL), envir = .GlobalEnv)
  }
  if(!exists("max_length", envir = .GlobalEnv)){
    assign("max_length", 3, envir = .GlobalEnv)
  }
)

on_load(setMaxCachedValues(max_length))

on_load(NULL)
on_load(NULL)
on_load(NULL)
