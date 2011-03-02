# ------------------------------------------------------------------------------
# fun2name
#   Given a function definition, 
#   
#   TODO:
#    - Move to function.tools 
#
# ------------------------------------------------------------------------------
fun2name <- function(f) {
  
  nms <- apropos( ",*", mode="function" )
  
  for( nm in nms ) 
    if( identical( f, eval( as.name(nm) ) ) ) return(nm)

  return(NULL)
    
}


name2fun <- function(x) 
  eval(as.name(x)) 







