# -----------------------------------------------------------------------------
# rel.type
#   get the relational operators type of an call or expression
#
#   n.b.
#     - cf operators::operator.type
#     - No replacement methods available for rel.type.
# -----------------------------------------------------------------------------

rel.type <- function(x) 
  UseMethod( 'rel.type', x ) 

rel.type.name <- function(x) 
  if( is.operator(x, type='relational') ) {
    .Options$operators[[as.character(x)]][['rel.type']]
  } else { 
    NULL
  }

rel.type.function <- function(x) 
  if( is.operator(x, type='relational') ) {
    .Options$operators[[ fun2name(x) ]][['rel.type']] 
  } else { 
    NULL
  }

rel.type.call <- function(x) 
  if( is.name(x[[1]]) ) 
    rel.type( as.name( x[[1]] )  ) else
    NULL

  
  



# rel.type expression.  This does not quite work since expressions
# are not necessarily a LHS OP RHS construction. 
# rel.type.expression <- function(x) 
#   sapply(x, function(x) rel.type(x[[1]])  )


  


