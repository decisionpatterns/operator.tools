# ------------------------------------------------------------------------------
# COERCION FUNCTIONS:
#   fun2name, name2fun, char2fun, fun2char, name2char, char2name
#   as.character.name, as.character.function
#   as.function.character, as.function.name
#   as.name.character, as.name.function
#
#   Functions can be represented as a string, a name in the formal sense or 
#   a definition, i.e. the , function(body) or string   
#   
#   functions 
#   TODO:
#    - Move to function.tools 
#    - recast as as.character, as.name, as.digest, as.s
#
#   See Also: args, body and formals.  
#    - body does not seem to work.  body( `<` ) and body( eval(`<`) ) are both
#      null.
#
# ------------------------------------------------------------------------------
fun2name <- function(f) {
  
  nms <- apropos( ",*", mode="function" )
  
  for( nm in nms ) 
    if( identical( f, eval( as.name(nm) ) ) ) return(nm)

  return(NULL)
    
}


name2fun <- function(x) eval(as.name(x))

# char2fun(x) name2fun(x)

# as.character.name <- function(x, ... )  HANDLED
# as.character.function <- function(x, ... ) -x is this the same as name.

# as.name.function
# as.name.




