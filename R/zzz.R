  
# .First.lib <- function( libname, pkgname ) {
.onAttach <- function( libname, pkgname ) {

  # .odg.logo()
  .pack.banner( pkgname ) 

  .initOps()

}


