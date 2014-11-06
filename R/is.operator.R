# ---------------------------------------------------------------------
# is.operator: 
#  function to test if argument is an operator, optionally of certain
#  'types'.  By default, it only checks the CORE or REGISTERED types.
# 
#  NB: 
#   - Because the search through unregistered functions is slow, we
#     try and find it in the registered ones first. 
#
#  TODO:
#   - Handle S4 operators.   
#   - How to handle calls like `%!in%` is this an operator?
#
# ---------------------------------------------------------------------

#' @export
is.operator <- function(x,...) 
  UseMethod( 'is.operator', x ) 

# DEFAULT: FALSE

#' @export
is.operator.default <- function(x, ... ) FALSE 

# NAME:
#' @export 
is.operator.name <- function(x, ... ) {
  x <- as.character(x) 

  if( length(list(...)) > 0 ) {
    x %in% operators(...)  
  } else {
    x %in% operators('REG') || x %in% operators('UNREG')
  }
   
}  

# FUNCTION: 
#' @export
is.operator.function <- function(x,...) 

  if( length(list(...)) > 0 ) {
    any( sapply(  
      operators(...), 
      function(op) identical( x, name2fun(op) )  
    ) ) 
  } else { 
    any( sapply( 
      operators("REG") ,
      function(op) identical( x, name2fun(op) )
    ) ) || 
    any( sapply( 
      operators("UNREG") ,
      function(op) identical( x, name2fun(op) )
    ) )  
  }      
