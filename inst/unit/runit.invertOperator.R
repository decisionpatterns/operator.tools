

test.invert <- function() {

  for( name in names(.Options$operators.inverse) )
    checkTrue( 
      ! is.null(invertOperator( as.name(name) )) , 
      msg=paste("inverse from name for ", name) 
    )

  for( name in names(.Options$operators.inverse) )
    checkTrue(
      ! is.null( invertOperator( eval( as.name(name) ) ) ) ,
      msg = paste("inverse from function for ", name )
    )



}
