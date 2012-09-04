# ---------------------------------------------------------------------
# FUNCTION: operator.types
#   Return the operator.type for a given operator
#
#  # ------------------------------------------------------------------
#  # NOTE: PERFORMANCE
#  #   Since it is expensive to search through UNREGISTERED operators
#  #   we test against REGISTERED operators first. 
#  #   note: that eval(as.name(x)) is very fast however, ~ 1.4e5 s-1
#  #   and we might as not complicate matters. 
#  # ------------------------------------------------------------------
#
#   What is op is a function.
#
# ---------------------------------------------------------------------
operator.type <- function(op) 
  UseMethod( 'operator.type', op )

operator.type.name <- function(op) {
  op <- as.character( deparse( op ) ) 

  if( op %in% operators(types="REG") )
    return( .Options$operators[[op]]$type )
 
  if( op %in% operators(types="UNREG") )
    return( "UNREGISTERED" ) 

  return(NULL)
}


operator.type.function <- function(op) {

  # REGISTERED OPERATORS
    li.fun <- sapply( operators( types="REG"), function(x) eval(as.name(x) ) )

    for( nm in names(li.fun) ) 
      if( identical( op, li.fun[[nm]] ) ) return( operator.type( as.name(nm)) )


  # UNREGISTERED OPERATORS
    li.fun <- sapply( operators( types="UNREG"), function(x) eval(as.name(x) ) )

    for( nm in names(li.fun) ) 
      if( identical( op, li.fun[[nm]] ) ) return( "UNREGISTERED" )

    return(NULL) 

}


