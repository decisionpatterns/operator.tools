# ---------------------------------------------------------------------
# Function: setOperators
#   search for operators of the %any% type, calling setOperator on each
#   and assigning them the type='USER'. 
#  
#  TODO:
# ---------------------------------------------------------------------
setOperators <- function( ... ) {

  ops <- apropos( "%.*%" ) 

  for( op in ops ) 
    if( ! op %in% names( .Options$operators ) ) 
      setOperator( name=op, ... ) 

}  

