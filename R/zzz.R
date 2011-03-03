  
# .First.lib <- function( libname, pkgname ) {
.onAttach <- function( libname, pkgname ) {

  cat(
    pkgname ,
    "-" ,
    utils::installed.packages()[ pkgname , "Version"],
    "provided by Decision Patterns\n\n" ,
    sep = ""
  )

  # Initializes package
  .initOps()

}


