# ---------------------------------------------------------------------
# Function: operators
#   Returns a current character vector of _defined_ operators.
#   `
#    REG(ISTERED): (DEFAULT) operators defined in base R or by calling 
#                  setOperator or setOperators
#  UNREG(ISTERED): operators that are defined but not registered
#         SPECIAL: those defined with the special %any% Syntax
#             ALL: REG+UNREG 
#            user: those defined and registered by the user and have the 
#                  type=="user". This is the default type set by 
#                  setOperators 
#
#  REGISTERED (REG), UNREGISTED (UNREG), ALL, SPECIAL
#
#  NOTE: 
#    These is a performance hit on calling operators("UNREG"), 
#    or operators(types="ALL") since
#    all of these cause a search through environments looking 
#    for operators of the %any% type.  This perfomance hit
#    can be mitigated against by explicitly checking for 
#    operators( type="REG" ).   
#
#  TODO: 
#   - should this be .operators since it is mostly an internal function?
# 
# ---------------------------------------------------------------------
operators <- function( types="REGISTERED" ) {

  core <- names( .Options$operators )
  
# DEPRECATED: Default was types=NULL, now types=="CORE" 
# CASE: types == NULL --> "ALL" OPERATORS
#  - We test for this most common special case for speed.
  if( is.null(types) ) 
    return( unique( c( core, apropos("^%.*%" ) ) ) )
  
  if( length(types) == 1 && types %in% c("REG","REGISTERED") ) return(core)  

  op.types <- unique( sapply( .Options$operators, function(x) x$type ) )
  ret <- NULL
  for( type in types ) {

    if( type == 'ALL' ) {
      ret <- c(ret, core, apropos("^%.*%" ) ) 
    
    } else if ( type == 'SPECIAL' ) {
      ret <- c(ret, apropos( "^%.*%" ) )

    } else if ( type %in% c( 'UNREG', 'UNREGISTERED' ) ) { 
      special <- apropos( "^%.*%" )
      ret <- c(ret, special[ ! special %in% core ])   
    
    } else if ( type %in% op.types ) {
      ret <- c( ret, core[ sapply( .Options$operators, function(x,y) x$type == y, type ) ] )

    } else {
      stop( "operator type: ", type, " is unknown" ) 
    }

  }

  return(unique(ret)) 

}

