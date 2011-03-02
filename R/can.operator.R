# ---------------------------------------------------------------------
# can.operator
#   tests whether the argument can be coerced to a operator, optionally
#   an operator of 'types'.
#   
# ---------------------------------------------------------------------

can.operator <- function(x, ... )
  UseMethod( 'can.operator', x ) 

can.operator.default <- function(x,...) FALSE

can.operator.name <- function(x,...) 
  deparse(x) %in% operators(...)

can.operator.function <- function(x,...) {
  deparse( x ) %in% 
  lapply( operators(...), function(op) deparse( eval( as.symbol(op) ) ) ) 
}  
  
can.operator.character <- function(x,...) 
   x %in% operators(...)


# setGeneric( 'can.operator', function(x,...) standardGeneric( 'can.operator' ) )
# 
# 
# setMethod( 'can.operator', 'name' ,
#   function(x,...) deparse(x) %in% operators(...) 
# )
# 
# 
# setMethod( 'can.operator', 'function' ,
#   function(x,...)
#     deparse( x ) %in% lapply( operators(...), function(op) deparse( eval( as.symbol(op) ) ) )
# )
# 
# 
# setMethod( 'can.operator', 'character' ,
#   function(x,...) x %in% operators(...)
# )     
# 
# 
