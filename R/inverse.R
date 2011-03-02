# ------------------------------------------------------------------------------
# inverse
#   inverses the operators expressed as a name, a function or in an 
#    expression
# 
# ------------------------------------------------------------------------------

# Before declaring a new generic function we check to see if it exists.
inverse <- function(x, ... ) 
  UseMethod( 'inverse' ) 

inverse.name <- function(x, ...) {
  op <- as.character(x)
  inverses <- sapply( .Options$operators, function(x) x$inverse )

  if( op %in% names(inverses) ) {
    return( as.name( inverses[[ op ]] ))
  } else  {
    warning( "No inverse found for op: ", op, call.=FALSE )
  }

  return(NULL)
}


inverse.function <- function(x, ...) {

  inverses <- sapply( .Options$operators, function(x) x$inverse )

  return( inverses[[fun2name(x)]] )
  warning( "No operator matched" )
  return( NULL )

}





# setGeneric( 'inverse', function(x, ...) standardGeneric( 'inverse' ) )
# 
# 
# setMethod( 'inverse', 'name', 
#   function(x) {
#     
#     op <- as.character(x)
#     inverses <- sapply( .Options$operators, function(x) x$inverse ) 
# 
#     if( op %in% names(inverses) ) {
#       return( as.name( inverses[[ op ]] ))
#     } else  {
#       warning( "No inverse found for op: ", op, call.=FALSE )    
#     }      
#         
#     return(NULL)
#   }
# )
# 
# 
# setMethod( 'inverse', 'function',
#   function(x) {
# 
#     inverses <- sapply( .Options$operators, function(x) x$inverse ) 
# 
#     return( inverses[[fun2name(x)]] )
#     warning( "No operator matched" )
#     return( NULL ) 
#   }
# )
# 
# 
# 
# 
# # .inverse.many <- 
# # setMethod( 'inverse', 'list', 
# #  function(x) {
# #
# #    for( i in 1:length(x) )
# #      x[[i]] <- inverse( x[[i]] )
# #    
# #    return(x)
# #
# #  }   
# # )
# 
# 
# 
# 
# 
# 
# 
# # inverse( quote( A >  5 ) )
# # inverse( quote( A >= 5 ) )
# # inverse( quote( A <  5 ) )
# # inverse( quote( A <= 5 ) )
# # inverse( quote( A == 5 ) )
# # inverse( quote( A != 5 ) )
# # inverse( quote( A %in% lettters[1:5] ) )
# # inverse( quote( A %!in% letters[1:5] ) )
# 
# 
