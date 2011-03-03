  
# .First.lib <- function( libname, pkgname ) {
.onAttach <- function( libname, pkgname ) {

  cat(
    pkgname ,
    "-" ,
    utils::installed.packages()[ pkgname , "Version"],
    " written by Decision Patterns\n\n" ,
    sep = ""
  )

  # Initializes package
  .initOps()

}


