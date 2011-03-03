  
# .First.lib <- function( libname, pkgname ) {
.onAttach <- function( libname, pkgname ) {

  cat(
    pkgname ,
    "-" ,
    installed.packages()[ pkgname , "Version"],
    " written by Decision Patterns\n\n" ,
    sep = ""
  )

  # Initializes package
  .initOps()

}


